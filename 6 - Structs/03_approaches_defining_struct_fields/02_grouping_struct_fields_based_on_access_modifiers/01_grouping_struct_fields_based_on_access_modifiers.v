pub struct Note {
pub:
	id int
pub mut:
	message string
	status  bool
}

/*
We have marked the Note struct as pub. We also marked the id field as public by declaring it under the pub group. 
The fields under the pub group are public and are read-only outside the module. 
Also, the message and status fields are marked with the pub and mut access modifiers. 
Defining struct fields under the pub mut group indicates that the struct fields are accessible and mutable within and outside the module where Note is defined.
*/