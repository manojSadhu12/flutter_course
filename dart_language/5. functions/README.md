<style>em{color: rgb(183, 157, 24) !important;}</style>
# Dart Functions

A function is a block of code (group of statements) that can do a specific task.

A function is a callable object (i.e, it executes only when it is called).


Naming convention for a function is camel notation: First letter of first word is small case and first letter of other words is capital case and no spaces in between. Ex: *myFirstFunction*

``` dart
greet() {
    print("Hello world!");
}

main() {
    greet();
}
```

#### Syntax for function

``` dart
returnType functionName(arguments) {

}
```

``` dart
int sum(int a, int b) {
  return a + b;
}

main() {
  var sumResult = sum(1, 5);
  print("Result is: $sumResult");
}
```

Function also works if types are omitted, but it is always recommended to add types.

``` dart
sum(a, b) {
  return a + b;
}

main() {
  var sumResult = sum(1, 5);
  print("Result is: $sumResult");
}
```

Here function arguments and are return type are *dynamic*.

## Shorthand syntax
It is a single line syntax for function.

``` dart
returnType functionName(arguments) => expression;
```
The *=> expression* syntax is a shorthand for *{ return expression; }*. The => notation is sometimes referred to as arrow syntax.

Eg:
``` dart
bool isEven(num number) => number % 2 == 0;

main() {
  print(isEven(100));
}

```

## Parameters
A function can have any number of required positional parameters. These can be followed either by named parameters or by optional positional parameters (but not both).

You can use trailing commas (commas in the end) when you pass arguments to a function or when you define function parameters.

## Named parameters
Named parameters are optional unless they’re specifically marked as *required*.

When calling a function, you can specify named parameters using *paramName: value*.

When defining a function, use *{param1, param2, …}* to specify named parameters.

``` dart
num sum({num num1 = 0, num num2 = 0}) => num1 * num2;

main() {
  print(sum(num1: 100, num2: 20));
}
```

Named parameters are optional, so we should provide a default value or make it nullable or mark it as *required*.

Named parameters can be followed by positional parameters. Eg:
``` dart
num sum(num num1, {num num2 = 0, num num3 = 0}) => num1 * num2 * num3;

main() {
  print(sum(700, num3: 100, num2: 20));
}
```

Although named parameters are a kind of optional parameter, you can annotate them with *required* to indicate that the parameter is mandatory — that users must provide a value for the parameter.

If a parameter is annotated with *required* we cannot provide a default value.

For example:

``` dart
const Scrollbar({Key? key, required Widget child})
```
If someone tries to create a *Scrollbar* without specifying the *child* argument, then the analyzer reports an issue.

## Optional positional parameters
Wrapping a set of function parameters in *[]* marks them as optional positional parameters:

``` dart
String hello([String msg = "World"]) => "Hello $msg";

main() {
  print(hello());
  print(hello("Manoj"));
}
```

For Optional positional parameters we should provide a default value or make it nullable. Optional positional parameters does not support *required* annotation.

> Flutter widget constructors — use only named parameters, even for parameters that are mandatory.

## The main() function
Every app must have a top-level *main()* function, which serves as the entry point to the app. The main() function returns void and has an optional *List&lt;String>* parameter for arguments.

``` dart
void main(List<String> arguments) {
  print(arguments);
}
```

## Functions as first-class objects
A function in dart is a callable object. So a function can be passed can be passed to another function, assign it to a variable.

``` dart
void sum(num num1, num num2, void callback(num result)) {
  callback(num1 + num2);
}

void main() {
  sum(100, 200, (result) { 
    print(result);
  });
}
```
In this example the function sum accepts *callback function*. And in the main() we are passing an *anonymous function (a nameless function) as callback*.

In this example we can directly pass *print* function as callback without calling it:

``` dart
void sum(num num1, num num2, void callback(num result)) {
  callback(num1 + num2);
}

void main() {
  sum(100, 200, print);
}
```

We can also assign a function to a variable.

``` dart
var greeting1 = (msg) => '!!! Hello $msg !!!';
Function greeting2 = (msg) => '!!! Hello $msg !!!';
```
