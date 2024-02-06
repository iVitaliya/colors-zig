const std = @import("std");
const strconv = @import("std").strconv;
const mem = @import("std").mem;
const utils = @import("./utils.zig");

fn ReplaceClose(index: isize, str: []const u8, close: []const u8, replace: []const u8, head: []const u8, tail: []const u8, next: isize) []u8 {
    _ = str;
    _ = index;
    if (next < 0) {
        return head ++ tail;
    }

    return head ++ ReplaceClose(next, tail, close, replace, head ++ replace, tail, @intCast(std.mem.indexOf(tail, close)));
}

fn ClearBleed(index: isize, str: []const u8, open: []const u8, close: []const u8, replace: []const u8) u8 {
    if (index < 0) {
        return open ++ str ++ close;
    }

    return open ++ ReplaceClose(index, str, close, replace, &[_]u8{}, &[_]u8{}, @intCast(std.mem.indexOf(str, open))) ++ close;
}

fn FilterEmptyInner(at: isize, open: []const u8, close: []const u8, replace: []const u8, str: []const u8) []const u8 {
    if (mem.eql(u8, str, &[_]u8{}) or mem.len(str) < 1) {
        return &[_]u8{};
    }

    return ClearBleed(at, str, open, close, replace);
}

fn FilterEmpty(at: isize, open: []const u8, close: []const u8, replace: []const u8, str: []const u8) []const u8 {
    return FilterEmptyInner.bind(at, open, close, replace, str);
}

fn innerInitiate(open: i32, close: i32, replace: []const u8, s: []const u8) []const u8 {
    const open_val = utils.IntToString(open);
    const close_val = utils.IntToString(close);
    const open_str = "\\x1b[" ++ open_val ++ "m";
    const close_str = "\\x1b[" ++ close_val ++ "m";

    return FilterEmpty(@intCast(mem.indexOf(u8, s, open_val)), open_str, close_str, replace, s);
}

pub fn Initiate(open: i32, close: i32, replace: []const u8) fn ([]const u8) []const u8 {
    return innerInitiate(open, close, replace);
}
