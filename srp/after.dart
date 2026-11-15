// Each class has one focused responsibility.
class Report {
  String generate() => 'Monthly sales: 1200';
}

class ReportPrinter {
  void printReport(String content) {
    print('Printing: $content');
  }
}

class ReportSaver {
  void save(String content) {
    print('Saving "$content" to report.txt');
  }
}

void main() {
  final report = Report();
  final content = report.generate();

  ReportPrinter().printReport(content);
  ReportSaver().save(content);
}
