colors := ['red', 'blue', 'green', 'white', 'black']

colors_with_letter_e := colors.map(fn (c string) int {
	if c.contains('e') { return 1
	 } else { return 0
	 }
})

println(colors_with_letter_e) // [1, 1, 1, 1, 0]

/*
The map function on an array can also take anonymous functions as input arguments. For example, 
consider the following code that demonstrates the use of the map function of an array with an anonymous function.
Here, we are mapping over the array of colors where the color name has a letter e within it. Then, we are building 
a resulting array of integers as a result of the map function indicating the presence of letter e with 1 and 0 otherwise. 
Now that we have learned all about arrays, let's move on to learning about maps.

*/
