# java-modules-example

This project is and example which includes all types of java modules as of Java
11. It  contains examples of how to call the code in modules, how to build
modular project with JDK command line tools and how to run modular programs.

I made this example to teach myself Java module concepts for OCP JSE11D exam.

Based in part on tutorial at http://tutorials.jenkov.com/java/modules.html


## Building and running

The project is built with shell scripts that simply run the JDK tools to carry
out build steps. No fancy build system is used (Ant, Maven, Gradle, ...)
because I wanted to learn the basics of working with modular code.

JDK 9 or newer must be available in PATH. Under Linux, start
`_build_and_run.sh` to build and run.

It should produce the following output:

```
Running from classes (without automatic module, since a directory with .class files is not recognized as automatic module):
================

Hello world from main module!
Hello world from module_b!
Hello world from module_c!
Hello world from serviceimpl_b!
Hello world from serviceimpl_a!
Hello world from openmodule!
(module xyz.aoresnik.exercise.modules.automaticmodule not included in this variant)

Running from jars (with automatic module):
================

Hello world from main module!
Hello world from module_b!
Hello world from module_c!
Hello world from serviceimpl_b!
Hello world from serviceimpl_a!
Hello world from openmodule!
Hello world from automaticmodule!
Hello world from unnamedmodule!

Running from standalone jlink-ed distribution (without automatic module, since automatic modules are not supported by jlink):
================

Hello world from main module!
Hello world from module_b!
Hello world from module_c!
Hello world from serviceimpl_b!
Hello world from serviceimpl_a!
Hello world from openmodule!
(module xyz.aoresnik.exercise.modules.automaticmodule not included in this variant)

```

## Viewing dependencies with `jdeps`

Dependencies of modules can be shown with `jdeps`:
```
jdeps --module-path out-jar/modules -classpath out-jar/classpath/unnamed-module.jar -m xyz.aoresnik.exercise.modules.main

```


## Notes

Modules are named module_b, module_c, ... because java discourages module names
that end in number (`javac` shows warnings).
