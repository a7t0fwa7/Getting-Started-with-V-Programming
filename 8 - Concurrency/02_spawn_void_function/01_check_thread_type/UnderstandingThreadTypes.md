# Understanding the thread type
The handle that's obtained when you spawn any function using the **go** keyword is of the thread type. With access to the thread type, you can wait() on the thread to finish executing its job.

## Thread array
You can create an array of threads with the following syntax:

mut t1 := []thread OPTIONAL_TYPE{}

The preceding syntax shows you how to declare an array of threads. OPTIONAL_TYPE indicates the return type of the functions held by the handlers contained in the thread array. All the elements of the thread array must be handlers of a function of a similar return type. For example, if you are adding the elements to the thread array and each of the elements spawns a concurrent function with the void type, then the array definition will be as follows:

`mut t1 := []thread{}`

In the preceding code, the type of the t1 variable is []thread. To ensure all the tasks that are held by t1 are executed completely, you can call a blocking function on the thread array with the t1.wait() expression. Calling the wait() function on t1 will ensure that all the concurrent tasks held by t1 are executed to completion. A detailed demonstration of []thread is provided in the Spawning multiple tasks to run concurrently section.

Alternatively, if you want to create a thread array that holds the concurrent tasks and all of them have a string return type, then the array definition will be as follows:

`mut t2 := []thread string{}`

In the preceding code, the t2 type is a []thread string. The call to the wait() function on t2 will ensure that all the concurrent tasks that spawn functions with string execute and return values in t2.

The following code shows how to access the values returned by the string functions that were spawned to run concurrently in their threads:

`t2_res := t2.wait()`

You will get the []string type for the t2_res variable. A detailed demonstration of a thread array of the []thread type is mentioned in the Spawning functions with return values to run concurrently and Spawning anonymous functions that accept input arguments sections of this chapter.

