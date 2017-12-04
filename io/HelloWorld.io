#!/usr/bin/env io

HelloWorld := Object clone
HelloWorld greetings := method(name, writeln("Hello ", name, "!"))

HelloWorld greetings("World")
HelloWorld greetings("Manu")
