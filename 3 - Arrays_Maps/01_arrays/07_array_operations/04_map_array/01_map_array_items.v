visitor := ['Tom', 'Ram', 'Rao']
res := visitor.map('Mr. ' + it)
println(res) // ['Mr. Tom', 'Mr. Ram', 'Mr. Rao']

/* 
The 'map' function is available on an array variable that accepts the operation to be performed on each element of the array as an input argument. 
Each element of an array during the map operation is referenced by the built-in 'it' variable.
Unlike the filter function, the result of the map function can produce an array that contains elements of similar or different types to that 
of the array on which the map function is performed.
*/
