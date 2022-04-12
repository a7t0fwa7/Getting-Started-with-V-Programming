v := 'hi'
ch := chan string{} // unbuffered channel
res := ch.try_push(v)
println(res) // not_ready


/*
Using try_push() on unbuffered channels
try_push() gracefully pushes data into the channel and returns the status in the form of an enum value from ChanState. 
The try_push() method accepts values of the type that the channel accepts. For an unbuffered channel, the try_push() operation 
returns a .not_ready value of ChanState enum, when there is no coroutine ready to pop a value out of the channel. 
To demonstrate this, consider the following code:

v := 'hi'

ch := chan string{} // unbuffered channel

res := ch.try_push(v)

println(res) // not_ready

The preceding code demonstrates the usage of the try_push() method on an unbuffered channel.

Caveats of using try_push on unbuffered channels
In the preceding code, we used the try_push() operation on an unbuffered channel, which immediately returned control to the program. 
Then, the execution control proceeded to the next line and printed a value of res. However, the push operation, which uses the 
arrow operator, <-, is blocking in nature, while with try_push(), you lose the blocking behavior for such an unbuffered channel. In such 
cases, the program continues executing the next sequence of statements, so if any data is pushed to this channel, it will be lost as we 
run past the execution flow. So, you must be cautious when you want to use try_push() as it stops the fun of working with channels that 
are shared across coroutines that are running concurrently, thereby leading to unexpected behavior. A more detailed explanation of the blocking 
behavior of unbuffered channels will be discussed in the Working with unbuffered channels section of this chapter.

*/