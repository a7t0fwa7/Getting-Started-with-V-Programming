module main

import time

pub struct Note {
pub:
	id      int
	created time.Time = time.now()
pub mut:
	message string    [required]
	status  bool
	due     time.Time = time.now().add_days(1)
}

// is_empty_message is a method that belongs to Note
pub fn (n Note) is_empty_message() bool {
	return n.message.len < 1
}

fn main() {
	mut n := Note{
		id: 1
		message: ''
	}

	if n.is_empty_message() {
		println('message is empty')
	} else {
		println('message not empty')
	}
}

/*
The methods for a struct allow us to define a behavior that is specific for the struct and allow us to update struct fields
*/

/*
V allows us to define methods for a struct. A method is a function with a special receiver argument that appears between fn and the method name. 
They allow us to add functions to a struct in a convenient manner. Methods are the kind of functions that access the properties of the struct to perform some routine. 
To define a method for a struct, follow the syntax shown here:

fn (r RECEIVER_TYPE) METHOD_NAME(OPTIONAL_INPUT_ARGUMENTS) RETURN_TYPE {

        METHOD BODY

}

In the preceding syntax, the RECEIVER_TYPE indicates the name of the struct to which the method belongs. If you are familiar with the C# programming language, 
this feature is similar to the concept of extension methods in C#. During runtime, the methods of a struct have access to the values held by the fields of the struct. 
Therefore, the methods help to evaluate logic or perform desired operations with the struct fields.

NOTE

The methods that belong to a struct need to be placed in the same module where the struct belongs.


*/