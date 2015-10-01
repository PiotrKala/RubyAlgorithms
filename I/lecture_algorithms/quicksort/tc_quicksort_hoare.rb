require_relative 'quicksort_hoare'
require_relative '../../../helpers'
require 'test/unit'


class TestQuickSortHoare < Test::Unit::TestCase
  include Helpers

  def test_2
    input = [1, 4, 2, 3]
    output = [1, 2, 3, 4]
    assert_equal( output, quicksort(input, 0, input.length-1) )

    input = [5, 1, 78, 23, 54, 24, 98, 234, 32, 79, 99]
    output = [1, 5, 23, 24, 32, 54, 78, 79, 98, 99, 234]
    assert_equal( output, quicksort(input, 0, input.length-1) )

    input = [1, 3, 5, 2, 4, 6]
    output = [1, 2, 3, 4, 5, 6]
    assert_equal( output, quicksort(input, 0, input.length-1) )
  end

  def test_3
    array = read_numbers_from_file_by_line('QuickSort')
    result = quicksort(array, 0, array.length - 1)
    assert_equal( true, is_sorted(result) )
  end
end
