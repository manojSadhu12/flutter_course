void main() {
  final Iterable<String> animals = ["Lion", "Tiger", "Elephant"];

  final ddd = animals.where((it) => it.length >= 4);
  print(ddd);
}
