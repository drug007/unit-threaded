#!/usr/bin/rdmd -unittest

import ut.runner;
import pass_tests;

import std.stdio;


int main(string[] args) {
    writeln("Running passing unit-threaded examples...\n");
    const tests = args[1..$];
    immutable success = runTests!(pass_tests)(tests);
    return success ? 0 : 1;
}