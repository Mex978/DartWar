int getDivisorsSum(int x) => List.generate(x ~/ 2, (n) => n + 1)
    .where((n) => x % n == 0)
    .reduce((x, y) => x + y);

List<int> buddy(int a, int b) {
  if (a < b) {
    for (int i = a; i <= b; i++) {
      final sum = getDivisorsSum(i);

      if (sum > 1 && getDivisorsSum(sum - 1) - 1 == i) {
        return [i, sum - 1];
      }
    }
  }

  return null;
}
