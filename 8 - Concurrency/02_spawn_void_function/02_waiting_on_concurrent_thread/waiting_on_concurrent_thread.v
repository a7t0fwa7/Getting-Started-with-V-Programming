module main

fn greet() {
	println('Hello from other side!')
}

fn main() {
	h := go greet()
	println(typeof(h).name)
	h.wait()
}

/*
From the preceding code, we can see that the main process is waiting for the subprocess that it initiated to run in a concurrent thread using the h.wait() statement. 
Simply put, when the program starts, the execution's control enters the main function, and then it spawns the greet() function to run in a concurrent thread. 
The main program gains access to the concurrent task through the h handle variable.

The main process proceeds to execute other statements if there are any that it encounters during the execution flow. 
So, it jumps to the next line in the sequence of statements, where we are printing h. As the statement gets evaluated 
in the sequence, the main program prints the type of h to the console, and the execution control then flows to the h.wait() statement. 
This is where the main process, which has no other work to do, will wait for the h thread instance to finish executing the greet() 
function, which prints the message to the standard console.

Now that we understood how to run a void function concurrently using the go keyword, let's learn how to implement a real-life scenario programmatically.
*/