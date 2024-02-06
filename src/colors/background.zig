const checkers = @import("../checkers/basics.zig");

const BgFunction = fn ([]const u8) []const u8;
const IBackgroundColors = struct {
    BgBlack: ?BgFunction,
    BgRed: ?BgFunction,
    BgGreen: ?BgFunction,
    BgYellow: ?BgFunction,
    BgBlue: ?BgFunction,
    BgMagenta: ?BgFunction,
    BgCyan: ?BgFunction,
    BgWhite: ?BgFunction,
};

pub const BackgroundColors = IBackgroundColors{
    .BgBlack = checkers.Initiate(40, 49, ""),
    .BgRed = checkers.Initiate(41, 49, ""),
    .BgGreen = checkers.Initiate(42, 49, ""),
    .BgYellow = checkers.Initiate(43, 49, ""),
    .BgBlue = checkers.Initiate(44, 49, ""),
    .BgMagenta = checkers.Initiate(45, 49, ""),
    .BgCyan = checkers.Initiate(46, 49, ""),
    .BgWhite = checkers.Initiate(47, 49, ""),
};
