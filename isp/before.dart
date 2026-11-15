// ISP violation: a simple printer is forced to implement scan and fax.
abstract class Machine {
  void printDocument(String document);
  void scanDocument(String document);
  void faxDocument(String document);
}

class BasicPrinter implements Machine {
  @override
  void printDocument(String document) {
    print('Printing: $document');
  }

  @override
  void scanDocument(String document) {
    throw UnsupportedError('Scanning is not supported');
  }

  @override
  void faxDocument(String document) {
    throw UnsupportedError('Faxing is not supported');
  }
}

void main() {
  BasicPrinter().printDocument('invoice.pdf');
}
