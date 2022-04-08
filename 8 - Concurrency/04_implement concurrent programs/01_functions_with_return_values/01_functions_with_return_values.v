module main

import time

fn hot_water() string {
	println('Started Switch on Water heater: $time.now().hhmmss()')
	time.sleep(5 * time.second)
	println('Water heater indicates hot water ready! : $time.now().hhmmss()')
	return 'Hot water ready!'
}

fn brush_teeth() string {
	println('Started brushing:  $time.now().hhmmss()')
	time.sleep(3 * time.second)
	println('End Brushing:  $time.now().hhmmss()')
	return 'Sparkling Teeth ready!'
}

fn select_clothes() string {
	println('Started choosing pair of clothes:  $time.now().hhmmss()')
	time.sleep(3 * time.second)
	println('End choosing pair of clothes:  $time.now().hhmmss()')
	return 'Pair of clothes ready!'
}

fn main() {
	mut t := []thread string{}
	sw := time.new_stopwatch()
	t << go hot_water()
	t << go brush_teeth()
	t << go select_clothes()
	res := t.wait()
	println('Your pre bath morning chores took: $sw.elapsed().seconds() seconds')
	println('*** Type Check ***')
	println('Type of thread array of strings t: ${typeof(t).name}')
	println('Type of res: ${typeof(res).name}')
	println('*** Values returned by concurrently executed tasks ***')
	println(res)
}

/*
We can modify the tasks so that each of the tasks returns messages. The three tasks – hot_water, brush_teeth, and select_clothes – will now have updated method
signatures, indicating their return values are of the string type. The values that were returned by the handles that are part of the thread array were taken 
into a variable called res. We are also printing the type of the t variable, which in this case is a thread array of strings represented by the []thread string type. 
This can be seen in the following output. The res variable is a type of []string as all three tasks have signatures indicating the string return type.

The output of the preceding code will appear as follows:

Started Switch on Water heater: 07:15:40

Started choosing pair of clothes:  07:15:40

Started brushing:  07:15:40

End choosing pair of clothes:  07:15:43

End Brushing:  07:15:43

Water heater indicates hot water ready! : 07:15:45

Your pre bath morning chores took: 5.0048506 seconds

*** Type Check ***

Type of thread array of strings t: []thread string

Type of res: []string

*** Values returned by concurrently executed tasks ***

['Hot water ready!', 'Sparkling Teeth ready!', 'Pair of clothes ready!']

Here, we can see that even though the order of execution for the concurrently spawned tasks differs based on the time taken by each of them, 
the res array, which is of the []string type, holds the values in the order that matches the order that we pushed the handles to the thread 
array of strings, t.

*/
