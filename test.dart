void main() {
  const items = ["Lion", "Tiger", "Elephant"];

  if (items.takeWhile((item) => item.contains('a'))) {
    print('At least one item contains "a"');
  }

  if (items.every((item) => item.length >= 5)) {
    print('All items have length >= 5');
  }
}
