# Implementing concurrency in V
Using V, you can write a program that runs functions concurrently using the go keyword. The go keyword is a built-in keyword in V. The go keyword is available anywhere in the program without any explicit import statements required. In the next section, we will understand the basic syntax of the go keyword.

# The go keyword syntax
You can run any function concurrently using the go keyword, just by writing the go keyword followed by the name of the function, as shown here:

`go FUNCTION_NAME_1(OPTIONAL_ARGUMENTS)`

In the preceding syntax, which demonstrates the usage of the go keyword in V, all we can see is a simple function named FUNCTION_NAME_1 that is being run concurrently. You do not need to make any special syntactical changes to a function to run it concurrently.

With the approach mentioned in the preceding syntax, the active program spawns a new thread and lets the function run concurrently. If the active program is interested in knowing the completion status of the FUNCTION_NAME_1 function, then it can wait for the thread to finish executing FUNCTION_NAME_1. The syntax will be as follows:
```
h := go FUNCTION_NAME_1(OPTIONAL_ARGUMENTS)

h.wait()
```
In the preceding syntax, we can see that the result of FUNCTION_NAME_1(OPTIONAL_ARGUMENTS) gives us access to the thread that the FUNCTION_NAME_1 function is executing on. Here, the h variable will be of the thread type. The h variable in this syntax is often termed as a handle to the concurrent task running in another thread. We are then calling the wait() function on the handle. The wait() function blocks the execution of the main program until the concurrent task has finished executing.

The preceding syntax shows how to spawn functions to run in concurrent threads using the go keyword. It also shows the syntax for waiting on threads until they finish executing. Having learned this, let's understand how to spawn a void function so that it can run concurrently.