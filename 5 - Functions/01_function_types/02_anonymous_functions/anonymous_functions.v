module main

fn main() {
	greet := fn (name string) {
		println('Hello, $name')
	}
	greet('Pavan')
	greet('Sahithi')
}

/*
Anonymous functions are function blocks that don't have any name and can be created inside another function. 

Anonymous functions can be declared and assigned to a variable on the fly such that they can be invoked by 
calling that variable. 

The scope of anonymous functions is within the scope of the function where they are declared. 

The preceding code depicts the creation of an anonymous function that greets us with Hello. 
The anonymous function is assigned to a variable, named greet, and accepts an input argument name of the string type. 
An anonymous function can also return values; however, in this case, it just prints the greeting to the standard 
output using the println statement.
*/