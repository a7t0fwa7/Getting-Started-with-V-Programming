module main

import mod1

fn main() {
	mod1.hello()
}

/*
The hello2 function, though not marked as public, is accessible across the mod1 module. 
Hence, it is called in the hello function, which is already accessible to the main module 
as it has been marked as public by using the pub keyword.
*/
