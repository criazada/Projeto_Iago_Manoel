const std = @import("std");
const info = std.log.info;
const HashMapII = std.AutoHashMap(i32, i32);

const D = struct {
    d1: HashMapII,
    d2: f128,

    const Self = @This();

    pub fn MD1(_: *const Self) void {
        info("MD1", .{});
    }

    pub fn MD2(_: *const Self) void {
        info("MD2", .{});
    }

    pub fn MD3(_: *const Self) void {
        info("MD3", .{});
    }
};
