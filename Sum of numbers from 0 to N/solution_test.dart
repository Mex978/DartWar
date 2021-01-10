import "package:test/test.dart";
import "solution.dart";

void main() {
  test('Basic tests', () {
    expect(SequenceSum.showSequence(0), equals("0=0"));
    expect(SequenceSum.showSequence(6), equals("0+1+2+3+4+5+6 = 21"));
    expect(SequenceSum.showSequence(-15), equals('-15<0'));
  });
}
