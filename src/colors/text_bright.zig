const checkers = @import("../checkers/basics.zig");

const BrightTextFunction = fn ([]const u8) []const u8;
const IBrightTextColors = struct {
    BrightBlack: ?BrightTextFunction,
    BrightRed: ?BrightTextFunction,
    BrightGreen: ?BrightTextFunction,
    BrightYellow: ?BrightTextFunction,
    BrightBlue: ?BrightTextFunction,
    BrightMagenta: ?BrightTextFunction,
    BrightCyan: ?BrightTextFunction,
    BrightWhite: ?BrightTextFunction,
};

pub const BrightTextColors = IBrightTextColors{
    .BrightBlack = checkers.Initiate(90, 39, ""),
    .BrightRed = checkers.Initiate(91, 39, ""),
    .BrightGreen = checkers.Initiate(92, 39, ""),
    .BrightYellow = checkers.Initiate(93, 39, ""),
    .BrightBlue = checkers.Initiate(94, 39, ""),
    .BrightMagenta = checkers.Initiate(95, 39, ""),
    .BrightCyan = checkers.Initiate(96, 39, ""),
    .BrightWhite = checkers.Initiate(97, 39, ""),
};
