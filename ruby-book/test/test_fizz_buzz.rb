require 'minitest/autorun'
require_relative '../lib/fizz_buzz'


class FizzBuzzTest < Minitest::Test
  def test_not_multiple_of_3_or_5
    assert_equal '1', fizz_buzz(1)
  end

  def test_multiple_of_3
    assert_equal 'Fizz', fizz_buzz(3)
  end

  def test_multiple_of_5
    assert_equal 'Buzz', fizz_buzz(5)
  end

  def test_multiple_of_15
    assert_equal 'Fizz Buzz', fizz_buzz(15)
  end

end
