mut student_1 := {
	'english':     90
	'mathematics': 96
	'physics':     83
	'chemistry':   89
}

sub := 'geography'
res := student_1[sub] or { panic('marks for subject $sub not yet updated') } // throws error

/*
We can gracefully handle the scenario in which a key being retrieved is not found in a map using the or {} block and display intuitive error messages.
*/