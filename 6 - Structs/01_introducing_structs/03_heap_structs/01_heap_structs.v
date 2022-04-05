struct Note {
	id      int
	message string
}

/* 
When a struct is initialized, its memory is allocated on the stack by default. V allows you to initialize a struct and allocates its memory on the heap, 
provided that you specify & before the struct name during initialization, as shown here 
References for Stack and Heap : https://www.guru99.com/stack-vs-heap.html
*/

fn main() {
	n1 := &Note{1, 'this note will be allocated on heap'}
	println(typeof(n1).name) // &Note
}

/*
Heap structs are particularly useful when dealing with structs that carry large amounts of data. 
Therefore, opting for heap structs can reduce explicit memory allocations.
*/