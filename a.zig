const info = @import("std").log.info;

const A = struct {
    a1: i32,
    a2: f32,

    const Self = @This();

    pub fn getA1(self: *const Self) i32 {
        info("getA1", .{});
        return self.a1;
    }

    pub fn getA2(self: *const Self) f32 {
        info("getA2", .{});
        return self.a2;
    }

    pub fn setA1(self: *Self, a1: i32) void {
        info("setA1", .{});
        self.a1 = a1;
    }

    pub fn setA2(self: *Self, a2: f32) void {
        info("setA2", .{});
        self.a2 = a2;
    }

    pub fn MA1(_: *const Self) void {
        info("MA1", .{});
    }

    pub fn MA2(_: *const Self) void {
        info("MA2", .{});
    }

    pub fn MA3(_: *const Self) void {
        info("Alteração a classe A partir do clone", .{});
    }
};
