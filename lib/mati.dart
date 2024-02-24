import 'dart:math';

List<List<String>> create10Aufgaben() {
  var rng = Random();
  var aufgaben = <List<String>>[];
  for (var i = 0; i < 10; i++) {
    aufgaben.add(createAufgabe(rng));
  }
  return aufgaben;
}

List<String> createAufgabe(Random rng) {
  var lowerBound = 0;
  var upperBound = 15;
  var operators = ["minus", "plus"];
  var firstInt = rng.nextInt(upperBound + 1);
  var secondInt = rng.nextInt(upperBound + 1);
  var operator = operators[rng.nextInt(2)];
  if (operator == "minus") {
    if (isLargerThanLowerBound(firstInt - secondInt, lowerBound)) {
      return createAufgabe(rng);
    }
    return ['$firstInt - $secondInt', '_____'];
  }
  return ['$firstInt + $secondInt', '_____'];
}

bool isLargerThanLowerBound(int numberToCheck, int lowerBound) {
  if (numberToCheck < lowerBound) {
    return false;
  }
  return true;
}
