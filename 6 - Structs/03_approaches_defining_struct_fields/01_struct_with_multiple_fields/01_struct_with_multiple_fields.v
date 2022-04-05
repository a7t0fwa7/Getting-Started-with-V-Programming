struct Note {
	id int
mut:
	message string
	status  bool
}

/*
In the preceding code example, we specified a new field for the Note struct named status with bool as its data type. 
The significant thing to notice here is that all the mutable types are declared under the mut keyword with a colon (:) symbol. 
The indent is optional and to help readability. The only thing that is noteworthy is that the syntax mut: to declare mutable fields has to be on its own separate line.

So, it is evident that all the fields of a struct declared before the mut: syntax are immutable and the ones after mut: are mutable.
*/