import 'dart:math' as Math;

void main() {
  final product = {
    "name": "Soap",
    "price": 12.5,
    "quantity": 4,
    "addedToCard": true
  };
  for (var item in product.entries.where((element) => false)) {
    print(item);
  }
}
