module main

import mod1

fn main() {
	mod1.hello()
}

/*
In the main module, we are calling the hello function that is marked as public using the pub keyword. 
The private init function is defined in mod1, as we learned that this will be the initializer function 
that is executed before any other function of the mod1 module. To view this, we will run the project by 
running the v run . command. The output of the preceding code will appear as follows:

Initializing mod1

Hello from mod1!

Note that before any other function is executed, the output prints the Initializing mod1 message from the 
init function. Only then will it print the Hello from mod1! message from the hello function.

*/
