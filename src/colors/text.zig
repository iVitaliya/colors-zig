const checkers = @import("../checkers/basics.zig");

const TextFunction = fn ([]const u8) []const u8;
const ITextColors = struct {
    Black: ?TextFunction,
    Red: ?TextFunction,
    Green: ?TextFunction,
    Yellow: ?TextFunction,
    Blue: ?TextFunction,
    Magenta: ?TextFunction,
    Cyan: ?TextFunction,
    White: ?TextFunction,
    Gray: ?TextFunction,
};

pub const TextColors = ITextColors{
    .Black = checkers.Initiate(30, 39, ""),
    .Red = checkers.Initiate(31, 39, ""),
    .Green = checkers.Initiate(32, 39, ""),
    .Yellow = checkers.Initiate(33, 39, ""),
    .Blue = checkers.Initiate(34, 39, ""),
    .Magenta = checkers.Initiate(35, 39, ""),
    .Cyan = checkers.Initiate(36, 39, ""),
    .White = checkers.Initiate(37, 39, ""),
    .Gray = checkers.Initiate(90, 39, ""),
};
