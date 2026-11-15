// SRP violation: this class has more than one responsibility.
class Report {
  String generate() => 'Monthly sales: 1200';

  void saveToFile(String content) {
    print('Saving "$content" to report.txt');
  }
}

void main() {
  final report = Report();
  final content = report.generate();
  report.saveToFile(content);
}
