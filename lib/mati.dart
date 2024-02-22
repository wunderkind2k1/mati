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
  var lowerCut = 0;
  var upperCut = 15;
  var operators = ["minus", "plus"];
  var firstInt = rng.nextInt(upperCut);
  var secondInt = rng.nextInt(upperCut);
  var operator = operators[rng.nextInt(2)];
  if (operator == "minus") {
    if (firstInt - secondInt < lowerCut) {
      return createAufgabe(rng);
    }
    return ['$firstInt - $secondInt', '_____'];
  }
  return ['$firstInt + $secondInt', '_____'];
}
