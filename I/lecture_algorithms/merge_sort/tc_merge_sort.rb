require_relative 'merge_sort'
require_relative '../../../helpers'
require 'test/unit'

class TestMergeSort < Test::Unit::TestCase
  include Helpers

  def test_basic
    input = [4, 3, 2, 1]
    output = [1, 2, 3, 4] 
    assert_equal( output, merge_sort(input) )

    input = [4, 3, 2]
    output = [2, 3, 4] 
    assert_equal( output, merge_sort(input) )

    input = [1]
    output = [1] 
    assert_equal( output, merge_sort(input) )

    input = [5, 1, 78, 23, 54, 23, 98, 234, 32, 78, 99]
    output = [1, 5, 23, 23, 32, 54, 78, 78, 98, 99, 234]
    assert_equal( output, merge_sort(input) )

    input = [1, 3, 5, 2, 4, 6]
    output = [1, 2, 3, 4, 5, 6]
    assert_equal( output, merge_sort(input) )
  end

  def test_merge
    input_left = [4]
    input_right = [3]
    output = [3, 4]
    assert_equal( output, merge(input_left, input_right) )

    input_left = [5, 7, 9, 12]
    input_right = [6, 8, 10, 11]
    output = [5, 6, 7, 8, 9, 10, 11, 12]
    assert_equal( output, merge(input_left, input_right) )

    input_left = [5, 7, 9]
    input_right = [5, 8, 10, 11]
    output = [5, 5, 7, 8, 9, 10, 11]
    assert_equal( output, merge(input_left, input_right) )

    input_right = [5, 7, 9]
    input_left = [5, 8, 10, 11]
    output = [5, 5, 7, 8, 9, 10, 11]
    assert_equal( output, merge(input_left, input_right) )
  end

  def test_from_file
    array = read_numbers_from_file_by_line('QuickSort')
    result = merge_sort(array)
    assert_equal( true, is_sorted(result) )
  end
end
