const info = @import("std").log.info;
const String = []const u8;

const C = struct {
    c1: String,
    c2: i32,

    const Self = @This();

    pub fn MC1(_: *const Self) void {
        info("MC1", .{});
    }

    pub fn MC2(_: *const Self) void {
        info("MC2", .{});
    }
};
