import "package:test/test.dart";

import "dart:math";
import "solution.dart";

void main() {
  int generateOdd() {
    int oddNum = (new Random.secure().nextInt(1000000) + 1).round();
    if (oddNum % 2 == 0) {
      oddNum++;
    }
    return oddNum;
  }

  var oddAtTheBack = [2, 6, 8, 10, 3];
  var oddInTheMiddle = [2, 6, 8, 200, 700, 31, 84, 10, 4];
  var oddInTheFront = [17, 6, 8, 10, 6, 12, 24, 36];
  var evenInTheFront = [2002, 1, 7, 17, 19, 211, 7];
  var evenInTheMiddle = [1, 1, 1, 1, 1, 144, 7, 7, 7, 7, 7, 7, 7, 7];
  var evenAtTheEnd = [
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    35,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    7,
    7,
    7,
    7,
    10002
  ];
  var oddAtTheEndNegative = [2, -6, 8, -10, -3523];
  var oddInTheMiddleNegative = [
    2,
    6,
    8,
    2,
    -66,
    34,
    -3523,
    66,
    700,
    1002,
    -84,
    10,
    4
  ];
  var oddInTheFrontNegative = [
    -1 * 10000000003,
    -18,
    6,
    -8,
    -10,
    6,
    12,
    -24,
    36
  ];
  var evenInTheFrontNegative = [-12, 1, 7, 17, 19, 211, 7];
  var evenInTheMiddleNegative = [1, 1, -1, 1, 1, -44, 7, 7, 7, 7, 7, 7, 7, 7];
  List<int> largeList = new List<int>.filled(10000000, 500);
  var targetOdd = generateOdd();
  largeList[898 + new Random.secure().nextInt(100000) + 1] = targetOdd;
  var oddResultZeroes = [0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  var zeroResult = [3, 7, -99, 81, 90211, 0, 7];

  test('Testing: odd at the end', () {
    expect(find(oddAtTheBack), equals(3));
  });
  test('Testing: odd in the middle', () {
    expect(find(oddInTheMiddle), equals(31));
  });
  test('Testing: odd in the front', () {
    expect(find(oddInTheFront), equals(17));
  });
  test('Testing: even in the front', () {
    expect(find(evenInTheFront), equals(2002));
  });
  test('Testing: even in the middle', () {
    expect(find(evenInTheMiddle), equals(144));
  });
  test('Testing: even at the end', () {
    expect(find(evenAtTheEnd), equals(10002));
  });
  test('Testing: odd at the end (negative)', () {
    expect(find(oddAtTheEndNegative), equals(-3523));
  });
  test('Testing: odd in the middle (negative)', () {
    expect(find(oddInTheMiddleNegative), equals(-3523));
  });
  test('Testing: odd in the front (negative)', () {
    expect(find(oddInTheFrontNegative), equals(-1 * 10000000003));
  });
  test('Testing: even in the front (negative)', () {
    expect(find(evenInTheFrontNegative), equals(-12));
  });
  test('Testing: even in the middle (negative)', () {
    expect(find(evenInTheMiddleNegative), equals(-44));
  });
  test('Testing: large list (size 10000000)', () {
    expect(find(largeList), equals(targetOdd));
  });
  test('Testing: odd, with zeroes', () {
    expect(find(oddResultZeroes), equals(11));
  });
  test('Testing: zero', () {
    expect(find(zeroResult), equals(0));
  });

  for (int i = 0; i < 100; i++) {
    List<int> randomList = [];
    for (int i = 0; i < new Random.secure().nextInt(500) + 3; i++) {
      randomList.add(generateOdd());
    }
    int target = generateOdd() * 2;
    randomList[new Random.secure().nextInt(randomList.length - 1)] = target;
    test('Testing: random even, trial ${i + 1}', () {
      expect(find(randomList), equals(target));
    });
  }

  for (int i = 0; i < 100; i++) {
    List<int> randomList = [];
    for (int i = 0; i < new Random.secure().nextInt(500) + 3; i++) {
      randomList.add(generateOdd() * 2);
    }
    int target = generateOdd();
    randomList[new Random.secure().nextInt(randomList.length - 1)] = target;
    test('Testing: random odd, trial ${i + 1}', () {
      expect(find(randomList), equals(target));
    });
  }
}
