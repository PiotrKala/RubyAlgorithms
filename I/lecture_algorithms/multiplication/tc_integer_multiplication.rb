require_relative 'integer_multiplication'
require 'test/unit'

class TestIntegerMultiplication < Test::Unit::TestCase
  def test_multiplication
    input_x = 123
    input_y = 45
    output = input_x * input_y
    assert_equal( output.to_s, multiple(input_x.to_s, input_y.to_s) )

    input_x = 123
    input_y = 456
    output = input_x * input_y
    assert_equal( output.to_s, multiple(input_x.to_s, input_y.to_s) )

    input_x = 1235
    input_y = 6789
    output = input_x * input_y
    assert_equal( output.to_s, multiple(input_x.to_s, input_y.to_s) )

    input_x = 87643476
    input_y = 31452646
    output = input_x * input_y
    assert_equal( output.to_s, multiple(input_x.to_s, input_y.to_s) )
  end
end
