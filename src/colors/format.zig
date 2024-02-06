const checkers = @import("../checkers/basics.zig");

const FormatFunction = fn ([]const u8) []const u8;
const IFormatColors = struct { Reset: ?FormatFunction, Bold: ?FormatFunction, Dim: ?FormatFunction, Italic: ?FormatFunction, Underline: ?FormatFunction, Inverse: ?FormatFunction, Hidden: ?FormatFunction, StrikeThrough: ?FormatFunction };

pub const FormatColors = IFormatColors{
    .Reset = checkers.Initiate(0, 0, ""),
    .Bold = checkers.Initiate(1, 22, "\x1b[22m\x1b[1m"),
    .Dim = checkers.Initiate(2, 22, "\x1b[22m\x1b[2m"),
    .Italic = checkers.Initiate(3, 23, ""),
    .Underline = checkers.Initiate(4, 24, ""),
    .Inverse = checkers.Initiate(7, 27, ""),
    .Hidden = checkers.Initiate(8, 28, ""),
    .StrikeThrough = checkers.Initiate(9, 29, ""),
};
