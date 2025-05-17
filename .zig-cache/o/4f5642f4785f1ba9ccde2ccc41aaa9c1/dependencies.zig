pub const packages = struct {
    pub const @"N-V-__8AAAHFTwBfBg00dnFXcYkNbjC8BSyi1CDcrnh12ypL" = struct {
        pub const available = true;
        pub const build_root = "/Users/ludusrusso/.cache/zig/p/N-V-__8AAAHFTwBfBg00dnFXcYkNbjC8BSyi1CDcrnh12ypL";
        pub const deps: []const struct { []const u8, []const u8 } = &.{};
    };
    pub const @"N-V-__8AABHMqAWYuRdIlflwi8gksPnlUMQBiSxAqQAAZFms" = struct {
        pub const available = true;
        pub const build_root = "/Users/ludusrusso/.cache/zig/p/N-V-__8AABHMqAWYuRdIlflwi8gksPnlUMQBiSxAqQAAZFms";
        pub const deps: []const struct { []const u8, []const u8 } = &.{};
    };
    pub const @"N-V-__8AALRTBQDo_pUJ8IQ-XiIyYwDKQVwnr7-7o5kvPDGE" = struct {
        pub const available = false;
    };
    pub const @"SDL-2.32.2-JToi31GUEgEEqcSkGTse-l1nCSkB30CRkWPAQ2moXSFp" = struct {
        pub const available = true;
        pub const build_root = "/Users/ludusrusso/.cache/zig/p/SDL-2.32.2-JToi31GUEgEEqcSkGTse-l1nCSkB30CRkWPAQ2moXSFp";
        pub const build_zig = @import("SDL-2.32.2-JToi31GUEgEEqcSkGTse-l1nCSkB30CRkWPAQ2moXSFp");
        pub const deps: []const struct { []const u8, []const u8 } = &.{
        };
    };
    pub const @"dvui-0.2.0-AQFJmanLzQCqLdMQ9a4R7kkDyyj-480sxyoONT-hRQ8w" = struct {
        pub const build_root = "/Users/ludusrusso/.cache/zig/p/dvui-0.2.0-AQFJmanLzQCqLdMQ9a4R7kkDyyj-480sxyoONT-hRQ8w";
        pub const build_zig = @import("dvui-0.2.0-AQFJmanLzQCqLdMQ9a4R7kkDyyj-480sxyoONT-hRQ8w");
        pub const deps: []const struct { []const u8, []const u8 } = &.{
            .{ "sdl", "SDL-2.32.2-JToi31GUEgEEqcSkGTse-l1nCSkB30CRkWPAQ2moXSFp" },
            .{ "sdl3", "sdl-0.2.1+3.2.10-7uIn9PLkfQHKJO7TvSXbVa0VnySCHbLz28PDZIlKWF4Y" },
            .{ "freetype", "freetype-2.13.0-AAAAAI6NqAA4EbABl7qfk5qBFJQb2xjUIcP6SY7EBFvJ" },
            .{ "raylib", "raylib-5.5.0-whq8uFq2NATO2aMsuIJtFw9YBQyYfVbO-ln5TAvN0bWP" },
            .{ "raygui", "N-V-__8AAAHFTwBfBg00dnFXcYkNbjC8BSyi1CDcrnh12ypL" },
            .{ "win32", "zigwin32-25.0.28-preview-AAAAAHsJ-wPA4nREAzT_OOkF6gLrornNuHqREfHDADoS" },
        };
    };
    pub const @"freetype-2.13.0-AAAAAI6NqAA4EbABl7qfk5qBFJQb2xjUIcP6SY7EBFvJ" = struct {
        pub const available = true;
        pub const build_root = "/Users/ludusrusso/.cache/zig/p/freetype-2.13.0-AAAAAI6NqAA4EbABl7qfk5qBFJQb2xjUIcP6SY7EBFvJ";
        pub const build_zig = @import("freetype-2.13.0-AAAAAI6NqAA4EbABl7qfk5qBFJQb2xjUIcP6SY7EBFvJ");
        pub const deps: []const struct { []const u8, []const u8 } = &.{
        };
    };
    pub const @"raylib-5.5.0-whq8uFq2NATO2aMsuIJtFw9YBQyYfVbO-ln5TAvN0bWP" = struct {
        pub const available = true;
        pub const build_root = "/Users/ludusrusso/.cache/zig/p/raylib-5.5.0-whq8uFq2NATO2aMsuIJtFw9YBQyYfVbO-ln5TAvN0bWP";
        pub const build_zig = @import("raylib-5.5.0-whq8uFq2NATO2aMsuIJtFw9YBQyYfVbO-ln5TAvN0bWP");
        pub const deps: []const struct { []const u8, []const u8 } = &.{
            .{ "xcode_frameworks", "N-V-__8AABHMqAWYuRdIlflwi8gksPnlUMQBiSxAqQAAZFms" },
            .{ "emsdk", "N-V-__8AALRTBQDo_pUJ8IQ-XiIyYwDKQVwnr7-7o5kvPDGE" },
        };
    };
    pub const @"sdl-0.2.1+3.2.10-7uIn9PLkfQHKJO7TvSXbVa0VnySCHbLz28PDZIlKWF4Y" = struct {
        pub const available = true;
        pub const build_root = "/Users/ludusrusso/.cache/zig/p/sdl-0.2.1+3.2.10-7uIn9PLkfQHKJO7TvSXbVa0VnySCHbLz28PDZIlKWF4Y";
        pub const build_zig = @import("sdl-0.2.1+3.2.10-7uIn9PLkfQHKJO7TvSXbVa0VnySCHbLz28PDZIlKWF4Y");
        pub const deps: []const struct { []const u8, []const u8 } = &.{
            .{ "sdl_linux_deps", "sdl_linux_deps-0.0.0-Vy5_h4AlfwBtG7MIPe7ZNUANhmYLek_SA140uYk9SrED" },
        };
    };
    pub const @"sdl_linux_deps-0.0.0-Vy5_h4AlfwBtG7MIPe7ZNUANhmYLek_SA140uYk9SrED" = struct {
        pub const available = false;
    };
    pub const @"zigwin32-25.0.28-preview-AAAAAHsJ-wPA4nREAzT_OOkF6gLrornNuHqREfHDADoS" = struct {
        pub const available = false;
    };
};

pub const root_deps: []const struct { []const u8, []const u8 } = &.{
    .{ "dvui", "dvui-0.2.0-AQFJmanLzQCqLdMQ9a4R7kkDyyj-480sxyoONT-hRQ8w" },
};
