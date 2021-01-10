int numPrimorial(int n) {
  return primeNumbers(n).fold(1, (value, number) {
    return value *= number;
  });
}

List<int> primeNumbers(int n) {
  final primeNumbers = <int>[];

  var number = 2;
  while (primeNumbers.length < n) {
    if (primeNumbers.firstWhere((prime) => number % prime == 0,
            orElse: () => null) ==
        null) primeNumbers.add(number);
    number++;
  }
  return primeNumbers;
}
