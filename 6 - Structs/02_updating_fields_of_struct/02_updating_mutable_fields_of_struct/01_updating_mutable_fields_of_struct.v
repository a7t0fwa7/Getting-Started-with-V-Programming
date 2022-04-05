module main

struct Note {
	id int
mut:
	message string
}

fn main() {
	mut n := Note{1, 'a simple struct demo'}
	println('before update')
	println(n)

	n.message = 'a simple struct updated'
	println('after update')
	println(n)
}

/*
There are a few things to remember while you update the values of struct fields:

The variable to which the struct is declared must be mutable.
You must specify the struct name to the right-hand side of the = operator followed by the struct fields that you wish to update. 
The values must be enclosed in curly braces ({}).
The field names must be specified as literals and only then can they be assigned values separated by a : sign.
The unspecified fields in the update statements are assigned zero by default.
*/