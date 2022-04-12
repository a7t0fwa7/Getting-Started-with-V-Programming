ch := chan int{}
ch <- 51
println(ch) // doesn't prints, due to blocking behavior of unbuffered channels


/*
You should see that the console halts and doesn't show any output. This means that the program entered the blocked state 
as soon as it encountered the push operation; that is, ch <- 51. We will understand why using push operations on an unbuffered 
channel blocks the program's execution in more detail in the Working with unbuffered channels section of this chapter.

To stop the program and gain access to the control from the blocked execution of the preceding program, you need to force stop 
the execution. To do that, hit the Ctrl + C key combination on your keyboard, and you will be fine.

*/