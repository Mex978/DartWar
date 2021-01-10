// Can a value be both true and false?

// Define omniBool so that it returns true for the following:

// omniBool == true && omniBool == false

class Omnibool {
  @override
  bool operator ==(other) => true;
}

final omnibool = Omnibool();
