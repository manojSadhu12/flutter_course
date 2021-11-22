# Control Flow

You can control the flow of your Dart code using any of the following:

## If and else
***if, else and else if*** are conditional statements where a block of code executes conditionally.

``` dart
if(condition1) {
    // this code executes only if the condition1 is true
} else if(condition2) {
    //block of code executes only if condition1 is false
} else if(condition3) {
    //block of code executes only if condition1 and condition2 are false
} else {
    //block of code executes only if condition1, condition2 and condition3 are false
}
```
> *else, else if* are optional.
> Conditions provided for the if statements should be of boolean type.

``` dart
var a = 20;
var b = 10;

if(a < b) {
    print("a is smaller than b.");
} else if(a > b) {
    print("a is greater than b.");
} else {
    print("a and b are equal.");
}
```

## for loop
Loops are used to execute a block of code again and again, as long as the provided condition is met.

JavaScript supports 5 types of loops: ***while***, ***do --- while***, ***for***, ***for---in***, ***[forEach](/dart_language/8.%20iterable/README.md)***

#### Standard for loop
***Syntax:***
``` dart
for(initialization; condition; incrementOrDecrementCounterVariable) {
    //code block
}
```
***initialization*** : counter variable can be initialized here, It executes only for the first time

***condition*** : code block executes only if this condition is met.

***incrementOrDecrementCounterVariable*** : you can increment or decrement the counter variable here.

#### for-in loop
***for-in loop*** works with iterables only.
``` dart
for (var item in [1, 2, 3, 4]) {
    print(item);
}
```

We cannot use ***for-in loop*** for ***Map***. But to loop through ***Map*** we ***entries getter*** which returns ***Iterable<MapEntry<K, V>>***

``` dart
final product = {
"name": "Soap",
"price": 12.5,
"quantity": 4,
"addedToCard": true
};
for (var item in product.entries) {
    print(item);
}
```

**Eg:**
``` dart
  var msg = "Hello World";
  final msgLength = msg.length;

  for (var i = 0; i < msgLength; i++) {
    print(msg[i]);
  }
```

## while loop
Loops are used to execute a block of code again and again, as long as the provided condition is met.

***while*** executed a block of code till the condition provided is true.

``` dart
while(condition) {
    //code block
}
```

``` dart
var i = 0;

while (i < 5) {
    print("Number is: $i");
    i++;
}
```

## do-while loop
``` dart
do {
    //code block
} while(condition)
```

In ***while*** first condition is checked and code block is executed till the condition is passed. But in ***do while*** first code block is executed later condition is checked.

``` dart
var i = 0;

do {
    print("Number is: $i");
    i++;
} while(i < 5);
```

> ***do while*** guaranties the execution of code block at least one.

``` dart
var i = 0;

do {
    console.log("Number is: ", i);
    i++;
} while(i < 1)
```

## Break and continue
Use ***break*** to stop looping:
``` dart
while (true) {
  if (shutDownRequested()) break;
  processIncomingRequests();
}
```

Use ***continue*** to skip to the next loop iteration:
``` dart
for (int i = 0; i < candidates.length; i++) {
  var candidate = candidates[i];
  if (candidate.yearsExperience < 5) {
    continue;
  }
  candidate.interview();
}
```

## Switch and case
The *switch* statement executes the ***case*** which matches to the given expression.

``` dart
switch(expression) {
  case value1:
    // code block
    break;
  case value2:
    // code block
    break;
  default:
    // code block
}
```

Eg:
``` dart
switch(Math.Random().nextInt(6)) {
    case 0:
        print("Zero");
        break;
    case 1:
        print("One");
        break;
    case 2:
        print("Two");
        break;
    case 3:
        print("Three");
        break;
    case 4:
        print("Four");
        break;
    case 5:
        print("Five");
        break;
    default:
        print("Some value more than Five: ");
}
```

The following example omits the break statement in a case clause, thus generating an error:
``` dart
switch(Math.Random().nextInt(6)) {
    case 0:
        print("Zero");
        // ERROR: Missing break
    case 1:
        print("One");
        break;
    case 2:
        print("Two");
        break;
    case 3:
        print("Three");
        break;
    case 4:
        print("Four");
        break;
    case 5:
        print("Five");
        break;
    default:
        print("Some value more than Five: ");
}
```

Dart supports empty cases to fall-through

``` dart
switch(Math.Random().nextInt(6)) {
    case 0:
    case 1:
    case 2:
        print("Less than or equal to Two");
        break;
    case 3:
        print("Three");
        break;
    case 4:
        print("Four");
        break;
    case 5:
        print("Five");
        break;
    default:
        print("Some value more than Five: ");
}
```

Dart supports ***continue*** if you really want to continue.


``` dart
var command = 'CLOSED';
switch (command) {
  case 'CLOSED':
    executeClosed();
    continue nowClosed;
  // Continues executing at the nowClosed label.

  nowClosed:
  case 'NOW_CLOSED':
    // Runs for both CLOSED and NOW_CLOSED.
    executeNowClosed();
    break;
}
```
