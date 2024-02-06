const checkers = @import("../checkers/basics.zig");

const BgBrightFunction = fn ([]const u8) []const u8;
const IBrightBackgroundColors = struct {
    BgBrightBlack: ?BgBrightFunction,
    BgBrightRed: ?BgBrightFunction,
    BgBrightGreen: ?BgBrightFunction,
    BgBrightYellow: ?BgBrightFunction,
    BgBrightBlue: ?BgBrightFunction,
    BgBrightMagenta: ?BgBrightFunction,
    BgBrightCyan: ?BgBrightFunction,
    BgBrightWhite: ?BgBrightFunction,
};

pub const BrightBackgroundColors = IBrightBackgroundColors{
    .BgBrightBlack = checkers.Initiate(100, 49, ""),
    .BgBrightRed = checkers.Initiate(101, 49, ""),
    .BgBrightGreen = checkers.Initiate(102, 49, ""),
    .BgBrightYellow = checkers.Initiate(103, 49, ""),
    .BgBrightBlue = checkers.Initiate(104, 49, ""),
    .BgBrightMagenta = checkers.Initiate(105, 49, ""),
    .BgBrightCyan = checkers.Initiate(106, 49, ""),
    .BgBrightWhite = checkers.Initiate(107, 49, ""),
};
