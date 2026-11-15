// LSP violation: Bird promises that every bird can fly.
class Bird {
  void fly() {
    print('Flying...');
  }
}

class Sparrow extends Bird {}

class Penguin extends Bird {
  @override
  void fly() {
    throw UnsupportedError('Penguins cannot fly!');
  }
}

void makeBirdFly(Bird bird) {
  bird.fly();
}

void main() {
  makeBirdFly(Sparrow());
  // This call breaks the expectation established by Bird.
  makeBirdFly(Penguin());
}
