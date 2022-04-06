module main

import mod1

fn main() {
	n := mod1.Note{
		id: 1
		message: 'Accessing structs of module demo'
	}
	println('Accessing struct field value Note id: $n.id')
	println('Accessing embedded struct field value NoteTimeInfo: $n.NoteTimeInfo')
}

/*
The preceding code shows that we accessed the mod1 module's Note and NoteTimeInfo structs in the main module and are initializing the Note struct. 
Then, we are printing its id field and embedded struct field, NoteTimeInfo. The preceding code provides the following output:

Accessing struct field value Note id: 1

Accessing embedded struct field value NoteTimeInfo: mod1.NoteTimeInfo{

    created: 2021-05-30 01:45:36

    due: 2021-05-31 01:45:36

}

The preceding output shows the result of accessing the id struct field and the embedded NoteTimeInfo struct field of the Note struct, 
which is defined with a public pub access specifier in the mod1 module.
*/