import utest.UTest;
import tests.FizzBuzzTests;

class Main {
  public static function main() {
    UTest.run([
      new FizzBuzzTests()
    ]);
  }
}
