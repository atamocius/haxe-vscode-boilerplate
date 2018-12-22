package src;

class FizzBuzz {
  public static function fizzBuzz(min: Int, max: Int) {
    if (min > max) {
      throw 'Min must not be higher than max.';
    }

    return [for (i in min...max + 1) i].map(x -> {
      if (x % 3 == 0 && x % 5 == 0) {
        return 'FizzBuzz';
      } else if (x % 3 == 0) {
        return 'Fizz';
      } else if (x % 5 == 0) {
        return 'Buzz';
      } else {
        return '$x';
      }
    });
  }
}
