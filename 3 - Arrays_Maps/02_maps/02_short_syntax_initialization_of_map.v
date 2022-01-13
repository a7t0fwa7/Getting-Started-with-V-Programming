mut student_1 := {
	'english':     90
	'mathematics': 96
	'physics':     83
	'chemistry':   89
}
println(student_1) // {'english': 90, 'mathematics': 96, 'physics': 83, 'chemistry': 89}


/*
You can also initialize a map with key values during the declaration itself using the short syntax shown here:

mut MAP_NAME := {

    KEY_1: VALUE_1
    KEY_2: VALUE_2
    .
    .
    KEY_N: VALUE_N

}

The preceding syntax demonstrates how to define a mutable map with a variable, named MAP_NAME, that follows the standard 
variable naming convention in V. 

Then, the value is initialized to the right-hand side of the := sign, which starts with a { that accepts various key-value pairs 
specified in each line. 

These key-value pairs are wrapped in { and } curly brackets. 

If you are defining a map in a single line, it is recommended that you separate the key-value pairs using a , comma symbol.

/*