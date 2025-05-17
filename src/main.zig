const std = @import("std");

pub fn main() !void {
    std.debug.print("All your {s} are belong to us.\n", .{"codebase"});
}

test "2+2" {
    const res = 2 + 3;
    try std.testing.expect(res == 5);
}
