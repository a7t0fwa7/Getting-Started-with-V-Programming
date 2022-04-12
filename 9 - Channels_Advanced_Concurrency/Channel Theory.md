# Channels – An Advanced Concurrency Pattern
The term channel indicates a medium or a path that allows you to transfer information or data from one end to the other. In the context of concurrency, channels allow us to share data by establishing a communication channel between the concurrent tasks. These concurrent tasks are often termed coroutines, which share the data by communicating through the channels. Channels are advanced concurrency patterns in V that solve the problem of explicitly handling data synchronization techniques among coroutines.

We can communicate between the coroutines with the help of shared objects. In V, these can be structs, arrays, or maps. But the problem with this approach is that you need to take explicit care of concurrency synchronization techniques such as protecting the shared objects using locks such as the read-only rlock or the read/write lock to prevent data races, as we learned in the Sharing data between the main thread and concurrent tasks section of Chapter 10, Concurrency.

Channels in V can be compared to queues. Generally, a queue allows things or elements to pass through it in one direction. The first one to enter the queue is the first one to exit the queue. So, the values that are sent to the channel are accessed in a First In First Out (FIFO) manner.

In the world of programming, a queue is a data structure that allows the data to flow only in one direction. In V, the process of adding data to the channel is known as push, and the process to take the data out of the channel is termed pop.

In this chapter, we will begin by looking at the syntax for declaring channels and then understand different types of channels, such as buffered and unbuffered channels. We will then learn about the properties of channels. Finally, we will learn about various methods available on a channel.

The following topics will be covered in this chapter:

Syntax to define a channel
Channel operations
Channel properties
Channel methods
Working with unbuffered channels
Working with buffered channels
Channel select
With this chapter, you will gain a thorough understanding of the blocking behavior of unbuffered channels. You will learn how to deal with such channels by dealing with code examples. You will also be able to work with buffered channels in detail. This chapter will also help you gain knowledge of the select statement and demonstrates how to implement channel operations as the conditional branches of a select statement. By the end of this chapter, you will be able to write seamless V programs using channels.

It is recommended that you run the code examples in each of the sections of this chapter in a fresh console or file with a .v extension. This will avoid clashes among variable names across examples.

# Syntax to define a channel
In this section, we will look at the syntax for defining a channel. Channels are a built-in feature in V, and you are not required to import any package to use them. The chan keyword is used to define a channel in V. To define a channel, you can use the following syntax:

`CHANNEL_VARIABLE := chan DATA_TYPE{OPTIONAL_CAPACITY: CAPACITY_VALUE}`

In this syntax, the channel variable will be of the chan DATA_TYPE. OPTIONAL_CAPACITY type. This is a syntactical representation of the cap property that accepts an integer value. The cap property is available on a channel variable that represents the capacity of the values the channel could hold. The type could be any type, such as a primitive type, or it could be a struct, a map, or an array.

Having understood the basic syntax, we will learn about unbuffered channels and buffered channels in the following subsections.

# Unbuffered channel
A channel defined without capacity is referred to as an unbuffered channel. An unbuffered channel has a capacity of 0 by default. The following code shows how to define an unbuffered channel. This channel accepts integer values that are pushed onto it:
```
uc := chan int{}

println(uc.cap) // 0
```
In the preceding code, the uc variable is of the chan int type. The capacity of the unbuffered channel, uc, is 0. The following code prints the type of uc to the console:

`println(typeof(uc).name) // chan int`

From the preceding code, we can see that the type of the unbuffered channel, uc, is chan int.

# Buffered channel
Unlike unbuffered channels, a buffered channel is defined with a non-zero capacity, with its cap property assigned with an integer value. The following code shows how to define a buffered channel:
```
bc := chan string{cap: 2}

println(bc.cap)

println(typeof(bc).name)
```
The following is the output:

2

chan string

In the preceding code, we are defining a channel of the chan string type with a capacity of 2. This means that the channel can accommodate a maximum of two string values at a time. Now, let's learn how to perform various operations on a channel in V.

# Channel operations
In this section, we will learn about the basic operations that we can perform on a channel. First, we will understand the arrow operator, which is identified by the <- symbol. This represents the flow of data into a channel in V. Then, we will learn about the two basic channel operations, which include pushing a value into the channel and popping the value out of the channel using the arrow operator.

# Arrow operator <-
As we mentioned in the introduction to this chapter, a channel in V lets information flow in only one direction, and it is an analogy of a queue. As a rule of thumb, the data in a channel always flows from right to left in V.

The syntactic representation is also consistent in V, and the representation of the data flow is always identified from right to left. Even if we look at the sign of the arrow operator, <-, it too always points toward the left.

The direction of the arrow operator, <-, indicates that the values always enter the channel from the right and exit the channel to the left.

# Push operation
In this section, we will understand the syntax that pushes data into a channel in V. Later, we will look at a simple example that demonstrates pushing an integer value into a buffered channel of integers.

# Syntax to push data into a channel
The push operation in V happens from right to left. This means that with the arrow operator, <-, in place, the data value that needs to be pushed into the channel will be placed on the right and that the channel variable will be placed to the left of <-. The following is the syntax to push data into the channel:
```
ch := chan VALUE_TYPE {OPTIONAL_CAPACITY: CAPACITY_VALUE}

ch <- VALUE_TO_PUSH
```
The preceding syntax shows pushing data into the ch channel. Here, we can see that if you want to push a value into the channel, the value is placed to the right of the arrow operator and the channel variable is placed to the left of the arrow operator in V.

It is worth noting that the push operation on a channel, ch <- VALUE_TO_PUSH, is a void expression.

# Pop operation
In this section, we will understand how to pop the data out of the channel in V. Later, we will look at a simple example that demonstrates popping an integer value out of the channel of integers after pushing an integer value into a buffered channel of integers.

## Syntax to pop the data out of the channel
Similar to the push operation, the pop operation in V also happens from right to left since the data that is entered from the right during the push operation exits to the left.

This means that with the arrow operator, <-, in place, the channel variable will be placed to the right of the arrow operator. The data that pops out of the channel is captured in a variable that's placed to the left of the arrow operator. The following is the syntax for popping the data out of the channel:
```
ch := chan VALUE_TYPE{OPTIONAL_CAPACITY: CAPACITY_VALUE}

ch <- VALUE_TO_PUSH

x := <- ch
```
In the preceding syntax, we defined a channel, followed by a statement that pushes a value into the channel. In the last line, we can see an expression, that is, <- ch. This expression is the value being popped out of the channel, and if a variable such as x, in this case, is placed to the left, then the x variable will be assigned with the value that popped out of the channel.

# Channel properties
You can obtain information about a channel variable by accessing the properties it exposes. The properties of the channel include len, cap, and closed. These properties provide the following information about a channel at the time of accessing them:

- **cap** is an integer property that indicates the capacity of the channel. This is 0 for the unbuffered channel. In the case of a buffered channel, the cap property indicates the maximum number of values a channel can hold.
- **len** is an integer property that indicates the actual number of values that the channel holds at the time of accessing this property. At any given point in time, the len value can only be less than or equal to the cap property.
- **closed** is a Boolean property, and when its value is true, it indicates that the channel is closed. If a channel is not closed, the value of the closed property will be false.

# Channel methods
V exposes some public methods to control a channel's behavior. These methods include the following:

*try_push()*
*try_pop()*
*close()*
Except for the close() method, the try_push() and try_pop() methods have a return value, which is a built-in enum type called ChanState. The ChanState enum has three enum values:

*not_ready*
*closed*
*success*
Performing try_push() or try_pop() on a channel can return one of the three aforementioned states. In this section, we will learn how to work with the try_push() function with buffered and unbuffered channels and then we cover how to work with the try_pop() and close() methods.