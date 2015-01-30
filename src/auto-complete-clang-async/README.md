# C/C++ auto-completion


## Customize your completion:

If you have custom includes paths or flags you want to give to the completion server,
you can do that by setting up a project.
A typical project structure is done like this:

	.
	|-- .emacsproject
	|   |-- flags
	|   `-- includes
	|-- Makefile
	|-- README
	|-- include
	|   `-- test.h
	`-- src
	    |-- main.c
	    `-- test.c

To do so create a directory .emacsproject located at the root of your project.
The flags and includes files are used to configure your project.

An example of flags file content:

	-std=c++11

An example of includes file content:

	include/
	/usr/include/SFML
