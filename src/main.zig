const std = @import("std");
const dvui = @import("dvui");
const RaylibBackend = dvui.backend;
comptime {
    std.debug.assert(@hasDecl(RaylibBackend, "RaylibBackend"));
}

var gpa_instance = std.heap.GeneralPurposeAllocator(.{}){};
const gpa = gpa_instance.allocator();

const vsync = true;
var scale_val: f32 = 1.0;

var show_dialog_outside_frame: bool = false;

pub const c = RaylibBackend.c;

/// This example shows how to use the dvui for a normal application:
/// - dvui renders the whole application
/// - render frames only when needed
pub fn main() !void {
    defer _ = gpa_instance.deinit();

    // init Raylib backend (creates OS window)
    // initWindow() means the backend calls CloseWindow for you in deinit()
    var backend = try RaylibBackend.initWindow(.{
        .gpa = gpa,
        .size = .{ .w = 800.0, .h = 600.0 },
        .vsync = vsync,
        .title = "Angelo ✅ / Ludo 💤",
    });
    defer backend.deinit();
    backend.log_events = true;

    // init dvui Window (maps onto a single OS window)
    var win = try dvui.Window.init(@src(), gpa, backend.backend(), .{});
    defer win.deinit();

    main_loop: while (true) {
        c.BeginDrawing();

        // Raylib does not support waiting with event interruption, so dvui
        // can't do variable framerate.  So can't call win.beginWait() or
        // win.waitTime().
        try win.begin(std.time.nanoTimestamp());

        // send all events to dvui for processing
        const quit = try backend.addAllEvents(&win);
        if (quit) break :main_loop;

        // if dvui widgets might not cover the whole window, then need to clear
        // the previous frame's render
        backend.clear();

        try dvui_frame();

        // marks end of dvui frame, don't call dvui functions after this
        // - sends all dvui stuff to backend for rendering, must be called before renderPresent()
        _ = try win.end(.{});

        // cursor management
        backend.setCursor(win.cursorRequested());

        // render frame to OS
        c.EndDrawing();

        // Example of how to show a dialog from another thread (outside of win.begin/win.end)
        if (show_dialog_outside_frame) {
            show_dialog_outside_frame = false;
            try dvui.dialog(@src(), .{}, .{ .window = &win, .modal = false, .title = "Dialog from Outside", .message = "This is a non modal dialog that was created outside win.begin()/win.end(), usually from another thread." });
        }
    }
}

fn dvui_frame() !void {
    var scroll = try dvui.scrollArea(@src(), .{}, .{ .expand = .both, .color_fill = .fill_window });
    defer scroll.deinit();

    inline for (0..10) |i| {
        var tl = try dvui.textLayout(@src(), .{}, .{ .expand = .horizontal, .font_style = .title_4 });
        const lorem = std.fmt.comptimePrint("This example shows how to use dvui in a normal application. {d}", .{i});
        try tl.addText(lorem, .{});
        tl.deinit();
    }

    const rect = dvui.Rect{
        .x = 100.0,
        .y = 100.0,
        .w = 200.0,
        .h = 100.0,
    };

    try dvui.drawRect(@src(), rect, .{
        .color_fill = dvui.Color.rgba(0.2, 0.6, 0.9, 1.0),
        .corner_radius = 10.0,
        .color_border = dvui.Color.black,
        .border_width = 2.0,
    });

    var tl = try dvui.textLayout(@src(), .{}, .{ .expand = .horizontal, .font_style = .title_4 });
    const lorem = "This example shows how to use dvui in a normal application.";
    try tl.addText(lorem, .{});
    tl.deinit();
}
