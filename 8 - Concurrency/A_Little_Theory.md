# Introducing concurrency
Concurrency means running tasks concurrently. While this might seem like a very abstract definition, let's consider the following real-world example. You wake up in the morning of winter, and you need hot water to bathe. You can only bathe when the water is hot enough. However, you have other morning chores to finish off while the water gets hot. So, you turn on the water heater and then, let's say, you brush your teeth for some time while the water heater indicates the water is hot. Then, you switch off the water heater, enjoy a hot shower, and get ready for the day.

The advantage of concurrency is that you can do multiple things simultaneously that don't have to follow a specific order. So, in this scenario, you don't have to remain idle waiting for the water to get hot; you can finish brushing your teeth in parallel. So, the order the tasks are completed in is not very important.

The term parallel I used previously is being used in a general talking sense here. But in the programming world, concurrency and parallelism are two different concepts. I'll explain parallelism in more detail in the Understanding parallelism section.

Let's say you have finished brushing your teeth and the heater is still heating the water and hasn't indicated that the hot water is ready yet. During this time, you can get a pair of clothes ready that you want to wear for the day. Sometimes, you may find yourself brushing your teeth and finding a nice pair of clothes from your wardrobe at the same time. So, these tasks do not need to be done sequentially.

Also, notice that with concurrent tasks, the outcome of one task may not necessarily affect the other. The tasks of heating the water and brushing your teeth are done simultaneously or concurrently. It is also evident that these tasks do not depend on each other, but you, the main actor, are dependent on these tasks being completed so that you can finish your daily morning routine.

In the world of computer programming, concurrency is I/O-bound. In correlation to the previous explanation, this means you (the main program) will provide input or act on a task (switch on the heater). The task runs on a different thread (starts heating the water) or runs externally via a third-party API (uses a heater and electricity to heat the water). The task takes its own time to process your input request and returns the result to you (the hot water status of the heater in the form of a light indicator).

Some of the most common examples of I/O-bound operations where we can apply concurrency are as follows:

- Obtaining a response from a third-party API
- Sending data to a third-party API
- Reading data from or writing data to a disk
- Downloading files from a web server or uploading files to it
- Now that we have got a firm understanding of the concept of concurrency, we will proceed to the next section, where we will understand parallelism with some real-life scenarios.

# Understanding parallelism
Although the words concurrency and parallelism are used interchangeably in the general sense, they differ slightly when it comes to the world of computers. Both of them are used to speed up things. However, concurrency focuses on multiple independent tasks to be finished in the least possible time. In contrast to concurrency, parallelism focuses on splitting one single task into multiple resources to speed up finishing a particular job. The concept of parallelism is huge, and it could take a full chapter to explain it. For this chapter, we will keep things simple and concise in this section and try to understand a use case of parallelism by looking at a simple but intuitive real-world example.

Consider that you have a tank with a capacity of 1,000 liters where you store water to use for your farmland. You have an electrical motor pump that pulls water up from the ground and fills the tank at a rate of 10 liters per minute. To fill the empty tank using a single motor pump, it would take 100 minutes, or 1 hour 40 minutes.

In summer, you need to have at least 4,000 liters of water to maintain your farm. So, you buy three more tanks of a similar capacity and have a connecting pipe that fills all four tanks with water using your electrical motor pump. Previously, it used to take 1 hour 40 minutes for one tank. But with four tanks in place with only one electrical motor pump, you need to wait 6 hours 40 minutes to ensure all the tanks become full; only then can you go home.

Considering this is a waste of time and it is not efficient to let the electrical motor run for much longer periods, you plan to buy three similar electrical motor pumps.

Now, you have each electrical motor pump connected to fill only one tank, so each of the motor pumps fills one tank in parallel. You turn on all four motor pumps, which finish filling all four tanks in 1 hour 40 minutes. You feel happy and go home from your farm early.

It is worth noting that the task of filling each tank can be split across multiple motor pumps instead of having one motor pump fill all four tanks. So, the tasks that are fit for parallel processing must be suitable enough to be split across processes and ensure the result is not affected.

Also, the task that's performed by each of the motor pumps accomplishes one common major task, which is filling all four tanks. This means that the final task is dependent on the parallel tasks and the way they perform. If one of the motor pumps has a slower or faster rate of filling water per minute, it affects the overall time it takes to finish filling all four tanks, which is the end goal in this scenario.

In simple terms, this example is an analogy to the world of computing in a way that each electrical motor pump can be assumed as the core of a quad-core processor chip. The task of making the four empty tanks full can be correlated to any task that can be split into chunks to run in parallel, ensuring that the collective progress of parallel tasks eventually leads to the main task being completed.

This example stands out as a case of functional parallelism. In some cases where data parallelism is involved, the outcome of the tasks that are performed by parallel jobs needs to be clubbed in a particular order so that the task is considered a success.

An example of this is exporting data from a report to generate a PDF file. In this process, each of the parallel jobs picks up a chunk of data to be laid out in pages. The final process is clubbing all the individual chunks of pages rendered by every parallel job in a particular order to make it into a single PDF. If one of the parallel jobs fails, the PDF that's generated is deemed to contain missing data or a missing list of pages. So, in data parallelism, all the parallel jobs must finish doing their part successfully, which eventually leads to the task that was split to run in parallel to be completed.

Having understood the concepts of concurrency and parallelism, let's learn about the basic terminologies that will be used in the rest of this chapter.

# Learning the basic terminology
Before we begin understanding how to implement concurrency in V, we will start by learning a few basic terms that we commonly use when working with concurrency:

**Program**: A program is a set of instructions in the form of functions and statements that help us achieve a particular job.
**Process**: A program with one or more functions and statements, when it starts running, is associated with the process. A process can have one or more sub-processes, each of them running on a different thread.
**Thread**: A thread allows one or more tasks to run in sequential order.
**Task**: A task is a unit of work that runs on a thread. It can be represented as a function in V.
Now that we understand these basic terminologies, let's get started with the concepts of concurrency that will help us implement concurrent programs in V.