// The calculator depends on an abstraction, not specific customer types.
abstract class DiscountPolicy {
  double calculate(double price);
}

class RegularDiscount implements DiscountPolicy {
  @override
  double calculate(double price) => price * 0.05;
}

class PremiumDiscount implements DiscountPolicy {
  @override
  double calculate(double price) => price * 0.20;
}

// Add new policies by implementing DiscountPolicy; this class stays unchanged.
class DiscountCalculator {
  double calculate(double price, DiscountPolicy policy) {
    return policy.calculate(price);
  }
}

void main() {
  final calculator = DiscountCalculator();

  print(calculator.calculate(100, RegularDiscount())); // 5.0
  print(calculator.calculate(100, PremiumDiscount())); // 20.0
}
