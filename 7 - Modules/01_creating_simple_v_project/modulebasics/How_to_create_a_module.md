# Creating a simple V project
Before we begin, we will create a demo V project, named modulebasics. We will then gain an understanding of all the aforementioned principles by implementing them in this project through examples. The following are the steps to create the demo project:

From the Terminal, navigate to the directory of choice and run the following command:
`v new modulebasics`

You will be prompted with inputs for the project description, version, and license information, as follows:
```
Input your project description: Understanding Modules in V

Input your project version: (0.0.0)

Input your project license: (MIT)

Initialising ...

Complete!
```
Provide the description, version, and license information, or skip this by hitting the Enter key, and you will see that the prompt shows the status of project creation as Complete!.
Now, from Command Prompt, set the current directory to the new project that we just created by running the command as follows:
`cd modulebasics`

Once you have done this, you will have a new V project with three files in a directory named modulebasics. The three files are as follows:

a) .gitignore

b) modulebasics.v

c) v.mod

The .gitignore file is for Git and will hold the list of files, file extensions, and directories that need to be ignored when pushing our project to Git-based source controls such as GitHub, GitLab, or BitBucket.

The modulebasics.v file is the entry point for the application that we have just created. The v new command has also added the boilerplate code to the modulebasics.v file as follows:
```
// file: modulebasics.v

module main

fn main() {

        println('Hello World!')

}
```

Here, modulebasics.v is the entry point to our project and is identified by the main module definition present in the module main file. It is also identified by the presence of fn main(), which indicates the main entry point function.

The v.mod file has module information that will expose details such as the name, description, version, license, and dependencies to the other projects that import this module. Now, we will proceed to create a module in our existing project.

We will run the modulebasics project by running the following command from the Terminal:
v run .

The preceding command shows the following output:

Hello World!

Now that we have set up a project to work with modules, we can go ahead and create a module.