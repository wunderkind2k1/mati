import 'package:mati/mati.dart' as mati;
import 'package:tabular/tabular.dart';

void main(List<String> arguments) {
  var content = mati.create10Aufgaben();
  var table = <List<String>>[];
  table.add(['Aufgabe', 'Lösung']);
  table.addAll(content);
  print(tabular(table));
}
