const std = @import("std");

pub fn build(b: *std.build.Builder) void {
    // Standard release options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall.
    const mode = b.standardOptimizeOption(options: StandardOptimizeOptionOptions);

    const lib = b.addStaticLibrary(b, std.build.StaticLibraryOptions{
        .name = "colors-zig",
        .optimize = std.builtin.OptimizeMode.Debug,
        .use_llvm = true,
        .single_threaded = true
    });
    _ = lib;

    // lib.setBuildMode(mode);
    // lib.install();

    const main_tests = b.addTest("src/main.zig");
    main_tests.setBuildMode(mode);

    const test_step = b.step("test", "Run library tests");
    test_step.dependOn(&main_tests.step);
}
