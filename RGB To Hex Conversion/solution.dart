String rgb(int r, int g, int b) {
  final hex = [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    'A',
    'B',
    'C',
    'D',
    'E',
    'F'
  ];
  String hexColor = '';
  var color = [r, g, b];

  if (color.indexWhere((c) => c != 255) == -1) return 'FFFFFF';
  if (color.indexWhere((c) => c != 0) == -1) return '000000';

  color.forEach((c) {
    if (c >= 255)
      hexColor += 'FF';
    else if (c <= 0)
      hexColor += '00';
    else
      hexColor += hex[c ~/ 16] + hex[c % 16];
  });

  return hexColor;
}
