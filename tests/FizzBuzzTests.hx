package tests;

import utest.Assert;
import src.FizzBuzz;

class FizzBuzzTests extends utest.Test {
  function test_ShouldThrowError_When_MinIsGreaterThanMax() {
    Assert.raises(() -> {
      return FizzBuzz.fizzBuzz(2, -5);
    }, 'Min must not be higher than max.');
  }

  function test_ShouldNotThrowError_When_MinIsEqualToMax() {
    final expected = ['Fizz'];
    final actual = FizzBuzz.fizzBuzz(3, 3);
    Assert.same(expected, actual);
  }

  function test_ShouldReturnExpected_When_InputsAre1and5() {
    final expected = ['1', '2', 'Fizz', '4', 'Buzz'];
    final actual = FizzBuzz.fizzBuzz(1, 5);
    Assert.same(expected, actual);
  }

  function test_ShouldReturnExpected_When_InputsAre1and20() {
    final expected = [
      '1', '2', 'Fizz', '4', 'Buzz', 'Fizz', '7', '8', 'Fizz', 'Buzz', '11',
      'Fizz', '13', '14', 'FizzBuzz', '16', '17', 'Fizz', '19', 'Buzz'
    ];
    final actual = FizzBuzz.fizzBuzz(1, 20);
    Assert.same(expected, actual);
  }

  function test_ShouldReturnExpected_When_InputsAre50and70() {
    final expected = [
      'Buzz', 'Fizz', '52', '53', 'Fizz', 'Buzz', '56', 'Fizz', '58', '59',
      'FizzBuzz', '61', '62', 'Fizz', '64', 'Buzz', 'Fizz', '67', '68', 'Fizz',
      'Buzz'
    ];
    final actual = FizzBuzz.fizzBuzz(50, 70);
    Assert.same(expected, actual);
  }
}
