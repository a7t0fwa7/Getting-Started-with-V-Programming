module main

import mod1

fn main() {
	println(mod1.greet_msg)
}

/*
The preceding code imports the mod1 module. In the main function, which is the entry point of our execution control, 
we are accessing the greet_msg constant from the mod1 module and printing it to the console:

Greeting from mod1!

The preceding output shows the value assigned to the greet_msg constant of the mod1 module being printed from the main module.

*/
