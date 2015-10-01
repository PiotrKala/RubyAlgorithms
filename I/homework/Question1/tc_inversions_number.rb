require_relative 'inversions_number'
require_relative '../../../helpers'
require 'test/unit'


class TestInverionsNumber < Test::Unit::TestCase
  include Helpers

  def test_1
    msac = MergeSortAndCount.new
    input = [1, 4, 2, 3]
    msac.merge_sort_and_count(input)
    assert_equal(2, msac.number_of_inversions)

    msac = MergeSortAndCount.new
    input = [1, 3, 5, 2, 4, 6]
    msac.merge_sort_and_count(input)
    assert_equal(3, msac.number_of_inversions)

    msac = MergeSortAndCount.new
    input = [6, 5, 4, 3, 2, 1]
    msac.merge_sort_and_count(input)
    assert_equal(15, msac.number_of_inversions)

    msac = MergeSortAndCount.new
    input = [1, 2, 3, 4, 5, 6]
    msac.merge_sort_and_count(input)
    assert_equal(0, msac.number_of_inversions)
  end

  def test_from_file
    input = read_numbers_from_file_by_line('IntegerArray')
    msac = MergeSortAndCount.new
    msac.merge_sort_and_count(input)
    assert_equal(2407905288, msac.number_of_inversions)
  end
end
