module main

struct Note {
	id int
mut:
	message string
}

fn main() {
	// declare
	mut n := Note{}

	// populate
	n = Note{
		id: 1
		message: 'updating struct fields demo'
	}
	println(n)

	// unspecified fields zeroed by default
	// id being type of int, will become 0 here
	println('unspecified id zeroed during short struct type initialization')
	n = Note{
		message: 'updating struct fields demo 2'
	}
	println(n)
}

/*
From the preceding output, we can observe that the value of the id field got zeroed to the default integer 
value 0 after we updated it for the second time, even though it was assigned a value of 1 when the n variable 
was populated with id set to 1. It is worth mentioning that if you had other field data types like bool or string, 
the zero value of such types would be false and '' respectively.
*/