ch := chan int{cap: 1}
ch <- 51
println('channel after push: $ch.str()')

println('popping value out of the channel and storing it in immutable variable x')
x := <-ch
println('value of x: $x')
println('channel after pop: $ch.str()')


/*
From the preceding output, we can see that the value, after popping the value from the channel, is assigned to the x variable, 
since printing the x variable shows a value of 51. So far, we have learned about various operations that we can perform on a 
channel using the arrow operator, <-. Next, we will learn about channel properties.
*/