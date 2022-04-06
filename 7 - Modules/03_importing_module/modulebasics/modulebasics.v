module main

import mod1
import mod2

fn main() {
	println('Hello World!')
}

/*
Running the preceding command will show the following output along with a warning:

.\modulebasics.v:3:8: warning: module 'mod1' is imported but never used

    1 | // file: modulebasics.v

    2 | module main

    3 | import mod1

      |        ~~~~

    4 |

    5 | fn main() {

Hello World!

We can observe that the last line is the output of the program that prints the Hello World! message of the main function. 
The rest of the output from the beginning is a warning that details module mod1 is imported but never used. So, in the next section, 
let's take a look at how to access the members of an imported module.
*/