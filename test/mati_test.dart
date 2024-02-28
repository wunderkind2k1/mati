import 'package:mati/mati.dart';
import 'package:test/test.dart';

void main() {
  test('isToSmall is working', () {
    expect(isToSmall(-1, 0), true);
    expect(isToSmall(0, 1), true);
    expect(isToSmall(1, 2), true);
    expect(isToSmall(1, 1), false);
    expect(isToSmall(1, 0), false);
    expect(isToSmall(2, 1), false);
    expect(isToSmall(0, -1), false);
  });
}
