# Lua pairs() iterator and table modification

This repository demonstrates a potential issue with Lua's `pairs()` iterator when used in conjunction with modifying the table being iterated over.

The bug.lua file contains a function `foo` that recursively iterates over a nested table.  If the table structure is altered during iteration, `pairs()` may not visit all elements as expected.

The bugSolution.lua file presents a solution that avoids modifying the table during iteration. This ensures the iterator visits all elements and avoids unexpected behavior. This solution uses a copy of the table to modify it without altering the table being iterated.