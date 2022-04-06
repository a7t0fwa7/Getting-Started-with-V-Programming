struct Note {
	id      int
	message string
}

n := Note{1, 'a simple struct demo'}

println(n)

/*
Arguments passed to the struct need to be ordered as they appear in the definition of the struct. 
We notice that we initialized a struct of a Note type with values assigned to its fields. 
Notice that the values for the struct field are mentioned implicitly and they get assigned to the 
struct fields in the order they were defined in the struct definition. In this case, id will be 
implicitly assigned a value of 1 and message with the value of 'a simple struct demo'
*/