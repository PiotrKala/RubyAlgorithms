require_relative 'comparision_number'
require_relative '../../../helpers'
require 'test/unit'


class TestQuickSortHoare < Test::Unit::TestCase
  include Helpers

  def test_mediana
    cn = ComparisionNumber.new
    array = [1, 4, 5, 2, 3]
    result = array[cn.mediana_pivot(array, 0, 4)]
    assert_equal(3, result)

    cn = ComparisionNumber.new
    array = [1, 4, 5, 2, 3]
    result = array[cn.mediana_pivot(array, 0, 2)]
    assert_equal(4, result)

    cn = ComparisionNumber.new
    array = [1, 4, 5, 2, 3]
    result = array[cn.mediana_pivot(array, 2, 4)]
    assert_equal(3, result)

    cn = ComparisionNumber.new
    array = [1, 4, 5, 2, 3, 8]
    result = array[cn.mediana_pivot(array, 0, 5)]
    assert_equal(5, result)
  end

  def test_med_sort
    cn = ComparisionNumber.new('med')
    array = read_numbers_from_file_by_line('QuickSort')
    result = cn.quicksort(array, 0, array.length - 1)
    assert_equal( true, is_sorted(result) )
  end

  def test_random_sort
    cn = ComparisionNumber.new
    array = read_numbers_from_file_by_line('QuickSort')
    result = cn.quicksort(array, 0, array.length - 1)
    assert_equal( true, is_sorted(result) )
  end

  def test_high_comparison_number
    cn = ComparisionNumber.new('hi')
    array = read_numbers_from_file_by_line('QuickSort')
    result = cn.quicksort(array, 0, array.length - 1)
    assert_equal( 164123, cn.comparision_number )
  end

  def test_low_comparison_number
    cn = ComparisionNumber.new('lo')
    array = read_numbers_from_file_by_line('QuickSort')
    result = cn.quicksort(array, 0, array.length - 1)
    assert_equal( 162085, cn.comparision_number )
  end

  def test_med_comparison_number
    cn = ComparisionNumber.new('med')
    array = read_numbers_from_file_by_line('QuickSort')
    result = cn.quicksort(array, 0, array.length - 1)
    assert_equal( 138382, cn.comparision_number )
  end
end
