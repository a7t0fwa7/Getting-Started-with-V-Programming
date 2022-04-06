module mod1

pub fn hello() {
	println('Hello from mod1!')
}

fn init() {
	println('Initializing mod1')
}

/*
Define init functions to execute one-time module-level initializer functionality. 
Modules in V allow you to define a function named init that is automatically executed when 
you import the module where it is defined. The init functions of a module act as an initializer 
of certain functionality, such as establishing database connections or initializing C libraries 
or module-specific settings, if any. To define the initializer function, you must meet the 
following conditions:

The init function must only be defined once inside the module.
The init function must not be marked as public.
The init function must not accept any input arguments.
The init function must not have a return type.

*/
