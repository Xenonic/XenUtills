const std = @import("std");
const Utills = @import("XenUtills.zig");
const math = @import("XenUtills.zig").math;
const expect = @import("std").testing.expect;
const print = @import("std").debug.print;

pub fn main() !void {
    var num: u8 = 2;
    var float: f32 = 2;
    var signed: i8 = 2;
    math.cube(u8, num);
    math.cube(f32, float);
    math.cube(i8, signed);
    if (num == 8) {
        print("cube works with u8", .{});
    } else {
        print("cube does not work with u8", .{});
    }
    if (float == 8) {
        print("cube works with f32", .{});
    } else {
        print("cube does not work with f32", .{});
    }
    if (signed == 8) {
        print("cube works with i8", .{});
    } else {
        print("cube does not work with i8", .{});
    }
    var num2: u8 = 2;
    var float2: f32 = 2;
    var signed2: i8 = 2;
    math.square(u8, num2);
    math.square(f32, float2);
    math.square(i8, signed2);
    if (num2 == 8) {
        print("square works with u8", .{});
    } else {
        print("square does not work with u8", .{});
    }
    if (float2 == 8) {
        print("square works with f32", .{});
    } else {
        print("square does not work with f32", .{});
    }
    if (signed2 == 8) {
        print("square works with i8", .{});
    } else {
        print("square does not work with i8", .{});
    }
    var num3: u8 = 4;
    var float3: f32 = 4;
    var signed3: i8 = 4;
    math.sqrRoot(u8, num3);
    math.sqrRoot(f32, float3);
    math.sqrRoot(i8, signed3);
    if (num3 == 2) {
        print("square root works with u8", .{});
    } else {
        print("square root does not work with u8", .{});
    }
    if (float3 == 8) {
        print("square root works with f32", .{});
    } else {
        print("square root does not work with f32", .{});
    }
    if (signed3 == 8) {
        print("square root works with i8", .{});
    } else {
        print("square root does not work with i8", .{});
    }
    var au8: u8 = 2;
    var bu8: u8 = 2;
    var cu8: u8 = undefined;
    var af32: f32 = 2;
    var bf32: f32 = 2;
    var cf32: f32 = undefined;
    var ai8: i8 = 2;
    var bi8: i8 = 2;
    var ci8: i8 = undefined;
    math.pthag(u8, au8, bu8, cu8);
    math.pthag(f32, af32, bf32, cf32);
    math.pthag(i8, ai8, bi8, ci8);
    if (cu8 == 2) {
        print("pythagrean works with u8", .{});
    } else {
        print("pythagrean does not work with u8", .{});
    }
    if (cf32 == 8) {
        print("pythagrean works with f32", .{});
    } else {
        print("pythagrean does not work with f32", .{});
    }
    if (ci8 == 8) {
        print("pythagrean works with i8", .{});
    } else {
        print("pythagrean does not work with i8", .{});
    }
    var lengthtest = [*:0]u8{ "H", "e", "l", "l", "o" };
    var lengthval: u8 = undefined;
    Utills.len(u8, lengthtest, lengthval);
    if (lengthval == 5) {
        print("len function works", .{});
    } else {
        print("len does not work", .{});
    }
}
