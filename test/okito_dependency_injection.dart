import 'package:okito/okito.dart';
import 'package:flutter_test/flutter_test.dart';

class Counter {
  int count = 0;
}

void main() {
  // Firstly inject the counter
  // Then, you can use it by [take] function anywhere!
  Okito.inject(Counter());

  doTests();
}

void doTests() {
  test('dependency tests', () {
    final counter = Okito.take<Counter>();

    expect(counter.count, 0);
    expect(counter.count, Okito.take<Counter>().count);

    counter.count++;

    expect(counter.count, 1);
    expect(counter.count, Okito.take<Counter>().count);

    counter.count--;

    expect(counter.count, 0);
    expect(counter.count, Okito.take<Counter>().count);
  });
}