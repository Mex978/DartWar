import "package:test/test.dart";
import "solution.dart";

void main() {
  test('Basic tests', () {
    expect(buddy(10, 50), equals([48, 75]));
    expect(buddy(200, 1000), equals(null));
    expect(buddy(57345, 90061), equals([62744, 75495]));
  });
}
