// Small interfaces describe separate capabilities.
abstract class Printer {
  void printDocument(String document);
}

abstract class Scanner {
  void scanDocument(String document);
}

abstract class Fax {
  void faxDocument(String document);
}

class BasicPrinter implements Printer {
  @override
  void printDocument(String document) {
    print('Printing: $document');
  }
}

class MultiFunctionPrinter implements Printer, Scanner, Fax {
  @override
  void printDocument(String document) {
    print('Printing: $document');
  }

  @override
  void scanDocument(String document) {
    print('Scanning: $document');
  }

  @override
  void faxDocument(String document) {
    print('Faxing: $document');
  }
}

void main() {
  BasicPrinter().printDocument('invoice.pdf');

  final officeMachine = MultiFunctionPrinter();
  officeMachine.scanDocument('contract.pdf');
  officeMachine.faxDocument('contract.pdf');
}
