b := chan string{cap: 2}
b <- 'hello'
println('capacity: $b.cap')
println('length: $b.len')
println('closed: $b.closed')


/*
In the preceding code, we created a buffered channel with the cap property set to 2. Then, we pushed the hello value into the buffered channel, b. 
Then, we are printing the three properties in each of the print statements

Note that the capacity is 2, as we defined for the buffered channel. However, the length is 1 as we have only pushed one string value to channel b. 
The closed property prints a value of false, which means channel b is open.


*/