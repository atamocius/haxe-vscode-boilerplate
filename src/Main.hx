import src.FizzBuzz;

class Main {
  static public function main(): Void {
    final result = FizzBuzz.fizzBuzz(1, 100);
    for (i in result) {
      trace(i);
    }
  }
}
