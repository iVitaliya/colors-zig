const std = @import("std");

pub fn LengthTestOne(array: [][]const u8) usize {
    const length = array.len;

    return length;
}

pub fn LengthTestTwo(array: [][]const u8) usize {
    const elementSize = @sizeOf(u8);
    const arraySize = @sizeOf(array);
    const length = arraySize / elementSize;

    //std.log.debug("Length of array: {}\n", .{length});
    return length;
}

pub fn StringElementExists(element: []const u8, array: [][]const u8) bool {
    for (array) |value| {
        if (value == element) {
            return true;
        }
    }

    return false;
}

pub fn IntToString(i: i32) []const u8 {
    return std.strconv.formatInt(&std.heap.page_allocator, i, 10);
}
