import 'package:mati/mati.dart';
import 'package:test/test.dart';

void main() {
  test('isLargerThanLowerBound is working', () {
    expect(isLargerThanLowerBound(-1, 0), false);
    expect(isLargerThanLowerBound(0, 1), false);
    expect(isLargerThanLowerBound(1, 2), false);
    expect(isLargerThanLowerBound(1, 1), true);
    expect(isLargerThanLowerBound(1, 0), true);
    expect(isLargerThanLowerBound(2, 1), true);
    expect(isLargerThanLowerBound(0, -1), true);
  });
}
