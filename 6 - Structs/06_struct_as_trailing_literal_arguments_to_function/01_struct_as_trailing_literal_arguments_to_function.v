module main

import time

// NoteTimeInfo is a struct to store time info of Note
pub struct NoteTimeInfo {
pub:
	created time.Time = time.now()
pub mut:
	due time.Time = time.now().add_days(1)
}

// Note is a struct with embedding struct NoteTimeInfo along with other fields
pub struct Note {
	NoteTimeInfo
pub:
	id int
pub mut:
	message string [required]
	status  bool
}

/*
As V does not support default function arguments or named arguments, we can use trailing struct literal syntax. 
In V, you can define functions that accept structs as input arguments. Therefore, we can pass a struct with default 
values to a function that accepts the struct as an input argument.

For example, let's create a function that creates a Note struct to remind us to buy groceries. This function will 
take the Note struct provided as an input argument and create a new Note struct that prepends a phrase, Buy Groceries:, 
to the message field of every new note being created, as follows:
*/

fn new_grocery_note(n Note) &Note {
	return &Note{
		id: n.id
		message: 'Buy Groceries: ' + n.message
	}
}

/*
Let's say we want to delay the due date of a note by a day. To do this, we can create a function so that we do not have to 
re-write the full field assignment every time we want to extend the due date. This reusable code can be invoked by just passing 
an existing note and it does the job of extending the due date by a day:
*/

fn extend_due_by_a_day(n Note) &Note {
	return &Note{
		NoteTimeInfo: NoteTimeInfo{
			due: n.due.add_days(1)
		}
		id: n.id
		message: n.message
	}
}

fn main() {
	g := new_grocery_note(Note{ id: 1, message: 'Milk' })
	println('$g.message is due by $g.due')
/*
The preceding code snippet demonstrates the method of passing values to a function that accepts a struct as its input argument. 
Notice that the arguments are the fields of a struct, along with the values that we want to assign to those fields. Also notice 
that the multiple field-name: value pairs are separated by a comma (,) sign. It is optional to specify the name of the struct, 
as we saw in the preceding code. Alternatively, you can explicitly mention the name of the struct, as shown here:

g := new_grocery_note(Note{id: 1, message: 'Milk'})
println('$g.message is due by $g.due')

or 

g := new_grocery_note(id: 1, message: 'Milk')
println('$g.message is due by $g.due')
*/

	n := extend_due_by_a_day(g)
	println('After extending due date by a day')
	println('$n.message is due by $n.due')
}

/*
The preceding code demonstrates another approach of passing a struct to a function. Here, we are directly passing the new grocery variable, 
g, that we obtained earlier as a result of the new_grocery_note function, as an argument to the extend_due_by_a_day function.
*/
