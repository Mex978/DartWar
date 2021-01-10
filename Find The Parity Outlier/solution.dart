int find(List integers) {
  var isEvenList = false;
  var parityOutlier = -1;

  var firstIsEven = integers[0].isEven;
  var secondIsEven = integers[1].isEven;
  var thirdIsEven = integers[2].isEven;

  if ((firstIsEven && secondIsEven) ||
      (secondIsEven && thirdIsEven) ||
      (firstIsEven && thirdIsEven)) {
    isEvenList = true;
  }

  integers.forEach((integer) {
    if ((isEvenList && integer.isOdd) || (!isEvenList && integer.isEven)) {
      parityOutlier = integer;
      return;
    }
  });

  return parityOutlier;
}
