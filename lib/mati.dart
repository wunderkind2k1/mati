import 'dart:math';

List<List<String>> create10Aufgaben() {
  var rng = Random();
  var aufgaben = <List<String>>[];
  for (var i = 0; i < 10; i++) {
    aufgaben.add(createAufgabe(rng));
  }
  return aufgaben;
}

// the optional opertor i when createAufgabe is getting recursed and we already have an operator (minus)
List<String> createAufgabe(Random rng, [String? operator]) {
  var lowerBound = 0;
  var upperBound = 15;
  var operators = ["minus", "plus"];
  var firstInt = rng.nextInt(upperBound + 1);
  var secondInt = rng.nextInt(upperBound + 1);
  var operator = operators[rng.nextInt(2)];
  if (operator == "minus") {
    if (isToSmall(firstInt - secondInt, lowerBound)) {
      return createAufgabe(rng);
    }
    return ['$firstInt - $secondInt', '_____'];
  }
  return ['$firstInt + $secondInt', '_____'];
}

bool isToSmall(int numberToCheck, int lowerBound) {
  if (numberToCheck < lowerBound) {
    return true;
  }
  return false;
}
