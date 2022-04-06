import time

// NoteTimeInfo is a struct to store time info of Note
pub struct NoteTimeInfo {
pub:
	created time.Time = time.now()
pub mut:
	due time.Time = time.now().add_days(1)
}

// Note is a struct with struct NoteTimeInfo as a field, along with other fields
pub struct Note {
	NoteTimeInfo // Struct as another struct field
pub:
	id int
pub mut:
	message string [required]
	status  bool
}

fn main() {
	n := Note{
		id: 1
		message: 'adding struct as struct field demo'
	}
	println('Due date: $n.due')
	println(n)
}

/*
Imagine a situation where you need to create a new struct. During the creation of the struct, you end up identifying more fields that become a part of the struct you are 
defining. There might be a chance that a few fields are related to each other, but they might not play a significant role in representing the struct you are declaring. 
In such cases, those fields can be moved to a separate struct and represent that separate struct inside the main struct as one of its fields. 
In such cases, V allows adding a struct as a field inside another struct. 

The only prerequisite to adding a struct inside of another struct is that the fields of type struct must be declared at the beginning of the struct body.
*/