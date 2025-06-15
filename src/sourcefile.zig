const std = @import("std");

pub fn main() !void
{
    std.debug.print("hello");
}

// Segment example begin
pub fn test_func() i32
{
    var a: i32 = 5;
    a += 7;
    return a;
}
// Segment example end

