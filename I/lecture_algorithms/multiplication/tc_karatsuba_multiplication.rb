require_relative 'karatsuba_multiplication'
require 'test/unit'

class TestKaratsubaMultiplication < Test::Unit::TestCase
  def test_fix_numbers
    input_x = '123'
    input_y =  '1'
    output = ['0123', '0001']
    assert_equal( output, fix_numbers(input_x, input_y))

    input_x = '10'
    input_y =  '11'
    output = ['10', '11']
    assert_equal( output, fix_numbers(input_x, input_y))

    input_x = '10'
    input_y =  '111'
    output = ['0010', '0111']
    assert_equal( output, fix_numbers(input_x, input_y))

    input_x = 123
    input_y =  456
    output = ['0123', '0456']
    assert_equal( output, fix_numbers(input_x, input_y))
  end

  def test_max
    input_x = 1
    input_y =  2
    output = 2
    assert_equal( output, max(input_x, input_y))

    input_x = 1
    input_y = 1 
    output = 1 
    assert_equal( output, max(input_x, input_y))

    input_x = 10123
    input_y = 1213
    output = 10123
    assert_equal( output, max(input_x, input_y))
  end

  def test_karatsuba
    input_x = 5
    input_y = 11
    output = input_x * input_y
    assert_equal( output, karatsuba(input_x.to_s, input_y.to_s) )

    input_x = 2
    input_y = 0 
    output = input_x * input_y
    assert_equal( output, karatsuba(input_x.to_s, input_y.to_s) )

    input_x = 2
    input_y = 6
    output = input_x * input_y
    assert_equal( output, karatsuba(input_x.to_s, input_y.to_s) )

    input_x = 12
    input_y = 16
    output = input_x * input_y
    assert_equal( output, karatsuba(input_x.to_s, input_y.to_s) )

    input_x = 12
    input_y = 161
    output = input_x * input_y
    assert_equal( output, karatsuba(input_x.to_s, input_y.to_s) )

    input_x = 123
    input_y = 45
    output = input_x * input_y
    assert_equal( output, karatsuba(input_x.to_s, input_y.to_s) )

    input_x = 123
    input_y = 456
    output = input_x * input_y
    assert_equal( output, karatsuba(input_x.to_s, input_y.to_s) )

    input_x = 1235
    input_y = 6789
    output = input_x * input_y
    assert_equal( output, karatsuba(input_x.to_s, input_y.to_s) )

    input_x = 87643476
    input_y = 31452646
    output = input_x * input_y
    assert_equal( output, karatsuba(input_x.to_s, input_y.to_s) )
  end
end
