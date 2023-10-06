require 'minitest/autorun'
require_relative '../lib/rgb'


class TestHex < Minitest::Test
  def data
    [
      # r, g, b, expected
      [0, 0, 0, '#000000'],
      [255, 255, 255, '#ffffff'],
      [4, 60, 120, '#043c78']
    ]
  end

  def test_hex
    data.each do |r, g, b, expected|
      actual = to_hex(r, g, b)
      assert_equal expected, actual
    end
  end
end

class TestInts < Minitest::Test
  def data 
    [
      ['#000000', [0, 0, 0]],
      ['#ffffff', [255, 255, 255]],
      ['#043c78', [4, 60, 120]]
    ]
  end

  def test_ints
    data.each do |hex, expected|
      actual = to_ints(hex)
      assert_equal expected, actual
    end
  end
end
