// We want to generate a function that computes the series starting
// from 0 and ending until the given number.

class SequenceSum {
  static String showSequence(num n) {
    num total = 0;
    var sequence = '';

    /// When the result > 0 the equality operator needs blank space
    var equalityOperator = ' = ';
    if (n > 0) {
      for (var number = 0; number <= n; number++) {
        total += number;
        sequence = number > 0 ? '$sequence+$number' : '$number';
      }

      return '$sequence$equalityOperator$total';
    } else if (n == 0) {
      return '0=0';
    }

    return '$n<0';
  }
}
