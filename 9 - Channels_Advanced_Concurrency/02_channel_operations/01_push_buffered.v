ch := chan int{cap: 1}
ch <- 51
println(ch)

/*
From the preceding output, we can see that we are calling the str() method on the channel variable. 
This method prints the channel's information, which includes the channel's type, values related to 
the channel's capacity, and closed status.
*/