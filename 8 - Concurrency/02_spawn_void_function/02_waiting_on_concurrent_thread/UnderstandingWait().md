# All you should know about wait()
The following are a few points to know about the wait() function with regards to the thread type in V:

- This function blocks the execution of the main process until the tasks that have been spawned to run concurrently in the other thread have finished executing.
- This function does not take any input arguments.
- This function is available on the handle of a single thread, as well as on the variable that was assigned with a thread array filled with handles to concurrent tasks.
- The return type of the wait() function is similar to that of the function that is being run concurrently.
- When calling the wait() function on the thread array, all the elements of the thread array must handle the functions with similar return types.
Having understood the basic concepts of the time module, the thread type, and the wait() function, we will start learning how to write and work with concurrent programming in V.