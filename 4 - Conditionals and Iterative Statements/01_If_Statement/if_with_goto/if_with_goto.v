module main

import os

fn main() {
	improper_input_age:
	println('Invalid input. Please provide value greater than 0.')

	next_person:
	inp := os.input('Enter your age:')

	if inp != 'stop' {
		age := inp.int()

		if age >= 13 {
			println('You are allowed to watch this movie')
		} else if age > 0 && age < 13 {
			println('Parental Guidance is required to watch this movie')
		} else if age <= 0 {
			unsafe {
				goto improper_input_age
			}
		}
		unsafe {
			goto next_person
		}
	}
}

/*
The if conditions with a goto statement
V allows you to label code and refer to the execution control using the goto keyword. 
The goto statement needs to be specified with a label that indicates the control to 
navigate to the label when the execution flow encounters a goto statement. 
A label is defined with general text followed by a : colon symbol.

NOTE:

A goto statement must be wrapped inside an unsafe block. This is because goto allows the 
program execution flow to move past variable initialization or return to code that accesses 
memory that has already been freed. As the goto statement requires an unsafe block, it should 
be avoided to prevent the risk of violating memory safety.

*/
