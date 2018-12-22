import src.FizzBuzz;

class Main {
  public static function main(): Void {
    final result = FizzBuzz.fizzBuzz(1, 100);
    for (i in result) {
      trace(i);
    }
  }
}
