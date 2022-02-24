# Iterable in Dart

An ***Iterable*** is a collection of elements that can be accessed sequentially.

In Dart, an ***Iterable*** is an abstract class, meaning that you can’t instantiate it directly. However, you can create a new ***Iterable*** by creating a new ***List*** or ***Set***.

Both ***List*** and ***Set*** are Iterable, so they have the same methods and properties as the ***Iterable*** class.

## Properties and getters
``` dart
final Iterable<int> iterable = [1, 2, 3, 4, 5];

print(iterable.first); // Returns first element. Throws a StateError if iterable is empty
print(iterable.last); // Returns last element. Throws a StateError if iterable is empty
print(iterable.length); // Returns length of iterable
print(iterable.isEmpty); // Returns true if iterable is empty else it returns false
print(iterable.isNotEmpty); // Returns false if iterable is empty else it returns true

try {
print(iterable.single); // If the iterable is having a single element it returns that element. else it throws a StateError
} catch (ex) {}
```

## Looping an iterable

**Using *for-in* loop**
``` dart
final Iterable<int> iterable = [1, 2, 3, 4, 5];

for (var element in iterable) {
print(element);
}
```

**Using *forEach()***

***forEach()*** invokes action (The function we that are passing to the ***forEach()***) on each element of the iterable in iteration order.

``` dart
final Iterable<int> iterable = [1, 2, 3, 4, 5];

iterable.forEach((element) {
print(element);
});
// (or)
iterable.forEach((element) => print(element));
// (or)
iterable.forEach(print);
```

## Filtering an iterable

We have multiple methods for filtering an iterable.

### firstWhere()

Returns the first element that satisfies the given predicate [test].

Iterates through elements and returns the first to satisfy [test].

If no element satisfies [test], the result of invoking the [orElse]
function is returned.

If [orElse] is omitted, it defaults to throwing a [StateError].

**Syntax:** `E firstWhere(bool test(E element), {E orElse()?})`

``` dart
final Iterable<String> animals = ["Lion", "Tiger", "Elephant"];

final animal = animals.firstWhere((it) => it.contains("e"));
print(animal);
```

### lastWhere()

Returns the last element that satisfies the given predicate [test].

Iterates through elements and returns the last to satisfy [test].

If no element satisfies [test], the result of invoking the [orElse]
function is returned.

If [orElse] is omitted, it defaults to throwing a [StateError].

**Syntax:** `E lastWhere(bool test(E element), {E orElse()?})`

``` dart
final Iterable<String> animals = ["Lion", "Tiger", "Elephant"];

final animal = animals.lastWhere((it) => it.contains("e"));
print(animal);
```

### where()

Returns all the elements that satisfies the given condition.

**Syntax** `Iterable<E> where(bool test(E element)) => WhereIterable<E>(this, test)`

``` dart
final Iterable<String> animals = ["Lion", "Tiger", "Elephant"];

final animal = animals.where((it) => it.contains("e"));
print(animal);
```
### takeWhile() and skipWhile()
***takeWhile()*** takes all the elements till the condition is matched and returns as a list.

***skipWhile()*** skips all the elements till the condition is matched and returns remaining elements as a list.

``` dart
const numbers = [1, 3, -2, 0, 4, 5];

var numbersUntilZero = numbers.takeWhile((number) => number != 0);
print('Numbers until 0: $numbersUntilZero');

var numbersStartingAtZero = numbers.skipWhile((number) => number != 0);
print('Numbers starting at 0: $numbersStartingAtZero');
```


## any() and every()

The Iterable class provides two methods that you can use to verify conditions:

any(): Returns true if at least one element satisfies the condition.

every(): Returns true if all elements satisfy the condition.

``` dart
const items = ["Lion", "Tiger", "Elephant"];

if (items.any((item) => item.contains('a'))) {
print('At least one item contains "a"');
}

if (items.every((item) => item.length >= 5)) {
print('All items have length >= 5');
}
```