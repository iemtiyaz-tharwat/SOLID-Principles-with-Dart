// OCP violation: every new customer type requires editing this calculator.
class DiscountCalculator {
  double calculate(String customerType, double price) {
    if (customerType == 'regular') return price * 0.05;
    if (customerType == 'premium') return price * 0.20;
    return 0;
  }
}

void main() {
  final calculator = DiscountCalculator();
  print(calculator.calculate('premium', 100)); // 20.0
}
