import "package:test/test.dart";
import "solution.dart";

void main() {
  group("basic tests", () {
    test("== true", () => expect(omnibool == true, isTrue));
    test("== false", () => expect(omnibool == false, isTrue));
  });
}
