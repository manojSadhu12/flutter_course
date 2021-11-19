# Datatype in Dart

DataType is the format (like number, text etc...) of data that a variable holds.

The Dart language has special support for the following as they are built in datatype:

* [Numbers](#numbers) ([int](#int), [double](#double))
* [Strings](#strings) (String)
* [Booleans](#booleans) (bool)
* [Lists](#lists) (List, also known as arrays)
* Sets (Set)
* Maps (Map)
* Runes (Runes; often replaced by the characters API)
* Symbols (Symbol)
* The value null (Null)

Every variable in Dart refers to an object (an instance of a class) you can usually use constructors to initialize variables. 

Some other types also have special roles in the Dart language:
* Object: The superclass of all Dart classes except Null.
* Future and Stream: Used in asynchronous support.
* Iterable: Used in for-in loops and in synchronous generator functions.
* Never: Indicates that an expression can never successfully finish evaluating. Most often used for functions that always throw an exception.
* dynamic: Indicates that you want to disable static checking. Usually you should use Object or Object? instead.
* void: Indicates that a value is never used. Often used as a return type.

## Numbers
Dart numbers come in two flavors:

### int
***int*** is a signed 64bit number. On native platforms, values can be from -2<sup>63</sup> to 2<sup>63</sup> - 1. On the web, integer values are represented as JavaScript numbers (64-bit floating-point values with no fractional part) and can be from -2<sup>53</sup> to 2<sup>53</sup> - 1.

### double
***double*** is a signed 64 bit floating number (number with fractional)

``` dart
int wholeNumber = 8;
double floatingPointNumber = 8.9;
double exponentialNumber = 1.2345e04;
int hexadecimalNumber = 0x303a;

print(wholeNumber);
print(floatingPointNumber);
print(exponentialNumber);
print(hexadecimalNumber);
```

We can also declare a variable as a num. If you do this, the variable can have both integer and double values.

``` dart
num wholeNumber = 8;
wholeNumber = 10.5;
```

### Arithmetic Operators on numbers

| Operator | Description                         | Example      | Meaning                            |
| :------- | :---------------------------------- | :----------- | :--------------------------------- |
| +        | Addition                            | x + y        | Sum of x and y                     |
| -        | Subtraction                         | x - y        | Difference of x and y              |
| *        | Multiplication                      | x * y        | Product of x and y                 |
| /        | Division, returns double            | x / y        | Quotient of x and y                |
| ~/       | Divide, returns int                 | x ~/ y       | Quotient of x and y                |
| %        | Modulus                             | x % y        | Remainder of x divided by y        |
| ++       | Increment                           | x++ (or) ++x | Increases the value of x by 1      |
| --       | Decrement                           | x-- (or) --x | Decreases the value of x by 1      |
| -expr    | Unary minus, also known as negation | -x           | reverse the sign of the expression |

``` dart
var x = 17;
var y = -7;

print("Addition of x and y: ${x + y}");
print("Subtraction of x and y: ${x - y}");
print("Multiplication of x and y: ${x * y}");
print("Division of x and y: ${x / y}");
print("Type for division of x and y: ${(x / y).runtimeType}");
print("Integer division of x and y: ${x ~/ y}");
print("Type for integer division of x and y: ${(x ~/ y).runtimeType}");
print("Modulus of x and y: ${x % y}");
print("Unary minus of y: ${-y}");
```

## Strings

A string a nothing but text which can contain alphabets, numbers, special characters. So a string is a sequence of UTF-16 characters.

You can use either single or double quotes to create a string.


``` dart
var message1 = "Hello!" //using double quotes
var message2 = 'Hi there!' //using single quotes
```

``` dart
var str1 = "I am '\"Manoj Sadhu\"'";
var str2 = 'Let\'s learn Dart';
```


### Escape characters

An escape sequence transforms to another character sequence which may be difficult or impossible to type.

		
| Escape Sequence | Transformed Output   |
| :-------------- | :------------------- |
| \\'             | '                    |
| \\"             | "                    |
| \b              | Backspace            |
| \f              | Form Feed            |
| \n              | New Line             |
| \r              | Carriage Return      |
| \t              | Horizontal Tabulator |
| \v              | Vertical Tabulator   |
| \\\             | \                    |


### Breaking string into multiple lines

``` dart
  print("Hello
 there");
```

This throws a syntax error.

To break a string into multiple lines we have a different literal ***'''*** or ***"""*** 

``` dart
print("""Hello
 there""");
```

### Raw string
You can create a “raw” string by prefixing it with r

``` dart
print("Hello\nthere"); // Printed in 2 lines
print(r"Hello\nthere"); // Printed in a single line along with \n
```

### String Interpolation

You can embed value of an expression inside a string by using ${expression}.

If the expression is an identifier, you can skip the {}.

``` dart
var name = "Manoj Sadhu";
var profession = "Software Engineer";
print("Hello, I am ${name}. I am a  $profession");

var x = 10;
var y = 20;
print('Addition of ${x + y}');
```

To get the string corresponding to an object, Dart calls the object’s toString() method. Let`s see an example for this.

``` dart {.line-numbers}
var aMap = {"name": "manoj", "profession": "Software engineer"};
print("Value of map: $aMap");
```


## Booleans

A boolean is the truth value of the logic. There are only 2 possible values for boolean. ***true*** and ***false***.

To represent boolean values, Dart has a type named ***bool***.

``` dart
var isFavorite = true;
bool isPaid = false;

print("".isEmpty);
print([100].isEmpty);
print("Hello" == "Hel" + "lo");
```

## Lists

Lists store collection of data. Lists hold ordered group of data.

Dart list literals look like JavaScript array literals.

``` dart
var animals = ["Lion", "Tiger", "Elephant"];
```

Array stores the data based on indexes.

All the values should be wrapped between ***[*** ***]***

Each element of an array should be separated with a ***,***

``` dart
var animals = ["Lion", "Tiger", "Elephant"]; //List<String>
print("$animals is ${animals.runtimeType}");

var integers = [1, 2, 3, 4]; //List<int>
print("$integers is ${integers.runtimeType}");

var numbers = [1, 10.5]; //List<num>
print("$numbers is ${numbers.runtimeType}");

var mixedList = ["", 1, 10.5]; //List<Object>
print("$mixedList is ${mixedList.runtimeType}");
```

In the above example we have seen how dart has inferred the type of list based on the value. We can also explicitly add a type to the list.

``` dart
  var animals = <String>["Lion", "Tiger", "Elephant"];
  List<num> numbers = [1, 2, 3, 4];
  var doubles = <double>[1, 2, 3, 4.8]; // The int numbers will be casted to double, so [1.0, 2.0, 3.0, 4.8] is the casted value.
  List<int> integers = [1, 2, 3, 4.8]; // This is an error as we cannot add a double in a List<int>
```

 ### Accessing elements of an List 

The index of an List starts from 0 till listLength -1.

To get get the length of a list we use length property. ***listVariable.length***

To access the values we have to fallow this syntax ***listVariable[index]***

``` dart
var animals = ["Lion", "Tiger", "Elephant"];

print(animals.length);
print("value at 0: ${animals[0]}");
print("value at 1: ${animals[1]}");
print("value at Last element: ${animals[animals.length - 1]}");
```

### Few methods of List

``` dart
var animals = ["Lion", "Tiger", "Elephant"];

animals.add("Monkey"); //Adding a single element
print(animals);

animals.addAll(["Horse", "Donkey"]); // Adding multiple elements
print(animals);

animals.insert(2, "Fox");
print(animals);

print(animals
    .asMap()); // Prints {0: Lion, 1: Tiger, 2: Elephant, 3: Monkey, 4: Horse, 5: Donkey}

print(animals.isEmpty); // returns true if list is empty else returns false
print(animals
    .reversed); // returns a new list that is reverse of the given list, doesn't changes the actual array.

print(animals);

animals.clear();
print(animals);
```

### Spread Operator
 Dart 2.3 introduced the spread operator (...) and the null-aware spread operator (...?), which provide a concise way to insert multiple values into a collection.

``` dart
var list = [1, 2, 3];
var list2 = [0, ...list, 10];
print(list2); //[0, 1, 2, 3, 10]
```
In the above example elements in the list object are added into list2.

``` dart
var list;
var list2 = [0, ...list];
print(list2); //[0]
```
In the above example elements in the list object are not added into list2 because it is null.


### Collection if
At the time of list creation we can decide to include an element using ***collection if***.

Example for ***collection if*** for a single element:
``` dart
const aBool = true;
var animals = [
  "Lion",
  "Tiger",
  "Elephant", 
  if (aBool) "Monkey"];
print(animals);
```

Example for ***collection if*** for a multiple elements:
``` dart
const aBool = true;
var animals = [
  "Lion",
  "Tiger",
  "Elephant",
  if (aBool) ...["Monkey", "Fox"]
];
print(animals);
```

### Collection for

``` dart
var listOfInts = [1, 2, 3];
var listOfStrings = [
  '#0',
  for (var i in listOfInts) '#$i'
];
print(listOfStrings)
```

### Constant list

``` dart
var animals = const ["Lion", "Tiger", "Elephant"];
animals.add("Monkey"); // Throws Unsupported operation: Cannot add to an unmodifiable list
```
The above code fails because we cannot modify a constant list.

``` dart
  var animals = const ["Lion", "Tiger", "Elephant"];

  animals = [];
  animals.add("Monkey");
```
The above code works as we are assigning a new array to the *animals* variable. And the new array is not constant.

``` dart
const animals = ["Lion", "Tiger", "Elephant"];

animals.add("Monkey"); // Throws Unsupported operation: Cannot add to an unmodifiable list
animals = []; // Constant variables can't be assigned a value.
```
In the above code we cannot modify the list and cannot assign a new array. Because both the variable and list are constants.

