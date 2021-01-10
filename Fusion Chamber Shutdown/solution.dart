// Given the number of atoms of Carbon [C],
// Hydrogen[H] and Oxygen[O] in the chamber.
// Calculate how many molecules of Water [H2O],
//  Carbon Dioxide [CO2] and Methane [CH4] will be produced
// following the order of reaction affinity below
// 1. Hydrogen reacts with Oxygen   = H2O
// 2. Carbon   reacts with Oxygen   = CO2
// 3. Carbon   reacts with Hydrogen = CH4

// (C,H,O) = (45,11,100)
// return no. of water, carbon dioxide and methane molecules
// Output should be like:
// (5,45,0)

List<int> burner(int c, int h, int o) {
  final molecules = <int>[];
  final h2o = division(h, 2);

  if (o >= h2o.first) {
    o -= h2o.first;
    h -= h2o.first * 2;
    molecules.add(h2o.first);
  } else {
    h -= o * 2;
    molecules.add(o);

    o = 0;
  }

  final co2 = division(o, 2);

  if (c >= co2.first) {
    c -= co2.first;
    o -= co2.first * 2;
    molecules.add(co2.first);
  } else {
    o -= c * 2;
    molecules.add(c);

    c = 0;
  }

  final ch4 = division(h, 4);

  if (c >= ch4.first) {
    c -= ch4.first;
    h -= ch4.first * 4;
    molecules.add(ch4.first);
  } else {
    h -= c * 4;
    molecules.add(c);
    c = 0;
  }

  return molecules;
}

List<int> division(int a, int b) => [a ~/ b, a % b];

void main() {
  print(burner(45, 11, 100));
}
