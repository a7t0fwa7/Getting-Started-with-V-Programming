x := 'hello'
ch := chan string{cap: 2}
for {
	status := ch.try_push(x)
	if status == .success {
		println('Channel length: $ch.len')
	} else {
		println('channel status: $status')
		break
	}
}

/*
Using try_push() on buffered channels
The following code demonstrates the usage of try_push() on a buffered channel of strings:

x := 'hello'

ch := chan string{cap: 2}

for {

    status := ch.try_push(x)

    if status == .success {

        println('Channel length: $ch.len')

    } else {

        println('channel status: $status')

        break

    }

}

In the preceding code, we defined a buffered channel, ch, of the chan string type with a capacity of 2. This means that when more 
than two string values are pushed to this channel without them popping any values, the status of the third try_push() method 
indicates not_ready, as shown here:

Channel length: 1

Channel length: 2

channel status: not_ready

Caveats of using try_push on buffered channels
The preceding output indicates that the try_push() operation succeeded until the channel's length equaled the channel capacity, 
which is 2 in this example. The moment the program tried to push the third value, the channel's status changed to not_ready. 
We end up having a race condition, such as a conditional if block to identify the result of the try_push() operation on channels. 
In such scenarios, dealing with different cases and making decisions based on the channel status will become complex. Although 
this seems to be clean and concise code, the usage of try_push() is not indicating that the channel is at its full capacity 
by throwing an exception.

*/