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
