// DIP violation: the high-level service creates a concrete low-level dependency.
class EmailSender {
  void send(String message) {
    print('Sending email: $message');
  }
}

class OrderService {
  final EmailSender emailSender = EmailSender();

  void placeOrder() {
    print('Order placed');
    emailSender.send('Your order has been placed');
  }
}

void main() {
  OrderService().placeOrder();
}
