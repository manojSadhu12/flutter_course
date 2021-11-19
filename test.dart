main() {
  const animals = const ["Lion", "Tiger", "Elephant"];

  animals.add("Monkey"); // Throws Unsupported operation: Cannot add to an unmodifiable list
  animals = []; // Constant variables can't be assigned a value.
}
