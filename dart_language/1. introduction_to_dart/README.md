<style>em{color: rgb(183, 157, 24) !important;}</style>
# Introduction to Dart

Dart is a Object Oriented programming language developed by Google.
* Used in Web (Dart is transpiled to JS)
* Used in the flutter.
* We can develop command line and server applications.


## Sample Dart program 

``` dart
// Define a function.
void hello(String name) {
  print('Hello $name.'); // Print to console.
}

// This is where the app starts executing.

main() {
  var name = "Manoj";
  hello(name); // Call a function.
}

```

Dart supports top level functions and variables so ***Class*** is not required in the above example.

In programing languages like Java functions and variables need to be wrapped inside a ***Class*** but that is not the case in Dart as it supports top level functions and variables.

## DART is not just a language
It includes:
1. [Libraries](#libraries)
2. [Tools](#tools)
3. [Dart VM](#dart-vm-dart-virtual-machine)
4. [Compiler to Javascript](#compiler-to-javascript)


#### Libraries
Dart ships with complete standard libraries which allows users to write fully working system apps along with web servers.

Refer: https://dart.dev/guides/libraries

The following are the libraries provided by default
1. **dart:core**
   1. This library is automatically imported in all dart files.
   2. Small but provides critical built-in functionality for every dart program.
   3. Includes Built-in types, collections, functions like print etc.
2. **dart:async**
   1. Support for asynchronous programming.
   2. Dart provides alternate for callback Future and Stream.
3. **dart:math**
   1. Provides functionality for mathematical and trigonometry functionalities.
   2. Mathematical constants and functions, plus a random number generator.
4. **dart:convert**
   1. Provides encoders and decoders for converting between different data representations, including JSON and UTF-8.
   2. Also provides support for additional customized converters.
5. **dart:io**
   1. File, socket, HTTP, and other I/O support for non-web applications.
   2. > Browser-based apps can't use this library. Only the following can import and use the dart:io library: Servers, Command-line scripts, Flutter mobile and desktop apps.

   etc...

#### Tools
1. Dart SDK
2. Flutter SDK
3. IDEs and Editor support
4. Dart Pad (https://dartpad.dev)
5. Command line tools
   1. [Pub](https://pub.dev/) package manager (https://dart.dev/tools/pub/cmd)
   2. Static Analyser
   3. Code Formatter


#### Dart VM (Dart Virtual Machine)
Dart VM works in the background and provides the following functionalities.
1. ***JIT***(just-in-time compiler)
   1. Provides incremental compilation with which enables hot reload.
   2. This mode is used while developing and provides features like debugging, metric collection that is used by [Dart dev tools](https://dart.dev/tools/dart-devtools).
   3. Only used at development phase.
2. ***AOT***(ahead-of-time compiler)
   1. Compiles to native ARM or x64 machine code.
   2. AOT-compiled app launches with consistent, short startup time.
   3. Only used at deployment phase.
3. ***Dart runtime***
   
   Regardless of which platform you use or how you compile your code, executing the code requires a Dart runtime. This runtime is responsible for the following critical tasks:

   1. **Managing memory:** Dart uses a managed memory model, where unused memory is reclaimed by a garbage collector (GC).
   2. **Enforcing the Dart type system:** Although most type checks in Dart are static (compile-time), some type checks are dynamic (runtime). For example, the Dart runtime enforces dynamic checks by type check and cast operators.
   3. **Managing isolates:** The Dart runtime controls the main isolate (where code normally runs) and any other isolates that the app creates.

On native platforms, the Dart runtime is automatically included inside self-contained executables, and is part of the Dart VM provided by the dart run command.



#### Compiler to Javascript
Code is compiled to Javascript using dart2js or dartdevc tools included in Dart.This tool is used to develop web apps.
1. ***dart2js*** 
   1. Converts dart file to js using *dart2js -o test.js test.dart* 
   2. Used in production or deployment.
2. ***dartdevc***
   1. Lets to run and debug a web app in any modern web browser.
   2. Used in development only.


## Features
1. Easier to create smooth animations and transitions that runs at 60FPS
2. The package system allows us to build libraries and upload them to repositories and share them
3. Simple syntax and has many modern language features like
   1.  Named constructors
   2.  Operator overloading
   3.  Named and optional function arguments
   4.  String interpolations using dollar sign
   5.  Extension methods
   6.  Async with Future and Streams
   7.  Isolates

## Dart installation
https://dart.dev/get-dart