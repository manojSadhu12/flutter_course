<style>em{color: rgb(183, 157, 24) !important;}</style>
# Dart Variables

A variable is a container that stores data.

## Syntax of creating a variable
``` dart
DataType variableName = data;
```
(or)
``` dart
var variableName = data;
```
***var*** is a reserved keyword in Dart. It is used to create variables. 

(or)
``` dart
Object variableName = data;
dynamic variableName = data;
```
If an object isn’t restricted to a single type, specify the Object type (or dynamic if necessary).

## Example of creating a variable
Here’s an example of creating a variable and initializing it:

``` dart
int int1 = 10;
var int2 = 10;

String str1 = "I love Flutter";
var str2 = "I love Flutter";

bool bool1 = true;
var bool2 = true;

Object obj1 = 10;
Object obj2 = "I love Flutter";
Object obj3 = true;

dynamic dynamic1 = 10;
dynamic dynamic2 = "I love Flutter";
dynamic dynamic3 = true;
```

The following examples shows reassigning a variable

``` dart
var anInt = 10;
anInt = 11;
anInt = "12"; // Throws Error: A value of type 'String' can't be assigned to a variable of type 'int'.

String aString = "Hello";
aString = "World";
aString = 12.5; // Throws Error: A value of type 'double' can't be assigned to a variable of type 'String'.
```

``` dart
Object anObject = 100;
anObject = "Hello";

dynamic aDynamic = 100;
aDynamic = "Hello";
```

## Default value
Uninitialized variables that have a nullable type have an initial value of null.  Even variables with numeric types are initially null, because everything datatype in Dart—are objects.

``` dart
  int anInt;
  print(anInt); // prints null
```
The above example works only if [null safety](/dart_language/4.%20null%20safety/README.md) is not enabled.


## Final and const

If you never intend to change the value of a variable use *final* or *const*, either instead of *var* or in addition to datatype.

A **final** variable can be set only once.

A **const** variable is a compile-time constant. (Const variables are implicitly final.)

``` dart
const name = 'Manoj Sadhu'; // Without a type annotation
final String nickname = 'Manoj';

name = 'Jyothi'; // Error: a final variable can only be set once.
```

Use **const** for you want if you want the variable to be **compile-time constant** (The value is computed in compile time. A compile-time constant will have the same value each time when the source code is run)

If the const variable is at the ***class*** level, mark it **static** **const**.

The value of a **const** should be a constant or an arithmetic operation.

``` dart
const str1 = "Hello";
const str2 = str1 + ' World';
```

You can define constants that use type checks and casts (is and as), collection if, and spread operators (... and ...?)

``` dart
const Object i = 3; // Where i is a const Object with an int value...
const list = [i as int]; // Use a typecast.
const map = {if (i is int) i: 'int'}; // Use is and collection if.
const set = {if (list is List<int>) ...list}; // ...and a spread.
```

> A ***final*** object cannot be modified but its fields can be changed. In comparison, a ***const*** object and its fields cannot be changed: they’re immutable.