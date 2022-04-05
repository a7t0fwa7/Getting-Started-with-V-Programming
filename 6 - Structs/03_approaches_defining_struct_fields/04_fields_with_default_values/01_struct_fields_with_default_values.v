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

fn main() {
	n := Note{
		id: 1
		message: 'order groceries'
	}
	println(n)
}

/*
The newly introduced fields in the Note struct (created and due) are of type, Time. The Time type is available as a part of the built-in time module.

In the Note struct, the field named created is an immutable field with the default value assigned with the time at which the Note was created. The other field 
named due will be set to the default value time.now().add_days(1), such that it identifies that the particular Note is due by 1 day from the time of the creation of Note.

The output will appear with the default values for the created, status, and due fields of Note as defined in the definition of the Note struct.

Notice that the status field has been assigned false, even though we didn't assign any value. This is due to the fact that, in V, the values of struct fields are zeroed 
by default during the creation of struct. 
In this case, the default value for status is assigned with the default value of the bool data type, which is false. 
Therefore, the value of the status field, even when it is not assigned any value, will be displayed as false.
*/