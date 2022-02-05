const info = @import("std").log.info;

const B = struct {
    b1: i32,
    b2: f32,

    const Self = @This();

    pub fn getB1(self: *const Self) i32 {
        info("getB1", .{});
        return self.b1;
    }

    pub fn getB2(self: *const Self) f32 {
        info("getB2", .{});
        return self.b2;
    }

    pub fn setB1(self: *Self, b1: i32) void {
        info("setB1", .{});
        self.b1 = b1;
    }

    pub fn setB2(self: *Self, b2: f32) void {
        info("setB2", .{});
        self.b2 = b2;
    }

    pub fn MB1(_: *const Self) void {
        info("MB1", .{});
    }

    pub fn MB2(_: *const Self) void {
        info("MB2", .{});
    }
};
