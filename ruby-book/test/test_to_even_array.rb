require 'minitest/autorun'
require_relative '../lib/to_even_array'

class ToEvenArrayTest < Minitest::Test
  def test_only_odd_numbers
    array = [1, 3, 5, 7, 9, 11]
    actual = to_even_array(array)
    assert_equal [], actual
  end

  def test_only_even_numbers
    array = [0, 2, 4, 6, 8, 10]
    actual = to_even_array(array)
    assert_equal [0, 2, 4, 6, 8, 10], actual
  end

  def test_odd_even_mix_numbers
    array = (0..12).to_a
    actual = to_even_array(array)
    assert_equal [0, 2, 4, 6, 8, 10, 12], actual
  end
end
