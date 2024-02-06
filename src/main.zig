const std = @import("std");
const testing = std.testing;
const utils = @import("./checkers/utils.zig");

// fn testBrightClrs(str: []const u8) void {
//     if (str) return;
// }

// export fn add(a: i32, b: i32) i32 {
//     return a + b;
// }

test "Test #1 length of array" {
    try testing.expectEqual(utils.LengthTestOne(&[_][]const u8{ "This", "will", "be", "four" }), 4);
}

test "Test #2 length of array" {
    try testing.expectEqual(utils.LengthTestTwo(&[_][]const u8{ "This", "will", "be", "four" }), 4);
}
