// Bird represents what is true for all birds.
abstract class Bird {
  void eat() => print('Eating...');
}

// Flying is a separate capability.
abstract class FlyingBird implements Bird {
  void fly();
}

class Sparrow extends FlyingBird {
  @override
  void fly() => print('Sparrow is flying');

  @override
  void eat() => print('Sparrow is eating');
}

class Penguin extends Bird {
  @override
  void eat() => print('Penguin is eating');
}

void makeBirdFly(FlyingBird bird) {
  bird.fly();
}

void main() {
  makeBirdFly(Sparrow());

  final penguin = Penguin();
  penguin.eat(); // A penguin is a Bird, but not a FlyingBird.
}
