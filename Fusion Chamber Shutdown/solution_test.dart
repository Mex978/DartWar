import "package:test/test.dart";

import 'solution.dart';

void main() {
  group("fixed tests", () {
    test("burner(45, 11, 100)",
        () => expect(burner(45, 11, 100), equals([5, 45, 0])));
    test("burner(354, 1023230, 0)",
        () => expect(burner(354, 1023230, 0), equals([0, 0, 354])));
    test("burner(939, 3, 694)",
        () => expect(burner(939, 3, 694), equals([1, 346, 0])));
    test("burner(215, 41, 82100)",
        () => expect(burner(215, 41, 82100), equals([20, 215, 0])));
    test("burner(113, 0, 52)",
        () => expect(burner(113, 0, 52), equals([0, 26, 0])));
  });
}
