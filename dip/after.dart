// Abstraction: describes what a notification sender can do.
abstract class NotificationSender {
  void send(String message);
}

// Low-level implementations follow the abstraction.
class EmailSender implements NotificationSender {
  @override
  void send(String message) {
    print('Sending email: $message');
  }
}

class SmsSender implements NotificationSender {
  @override
  void send(String message) {
    print('Sending SMS: $message');
  }
}

// High-level service depends on the abstraction, not EmailSender or SmsSender.
class OrderService {
  final NotificationSender notificationSender;

  // Constructor injection: dependency is supplied from outside.
  OrderService(this.notificationSender);

  void placeOrder() {
    print('Order placed');
    notificationSender.send('Your order has been placed');
  }
}

void main() {
  final emailOrderService = OrderService(EmailSender());
  emailOrderService.placeOrder();

  final smsOrderService = OrderService(SmsSender());
  smsOrderService.placeOrder();
}
