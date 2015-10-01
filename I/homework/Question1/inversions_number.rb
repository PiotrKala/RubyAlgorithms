class MergeSortAndCount
  attr_reader :number_of_inversions

  def initialize
    @number_of_inversions = 0
  end

  def merge(left, right)
    i = 0
    j = 0
    result = []
    while( i < left.length && j < right.length )
      if left[i] < right[j]
        result.push(left[i])
        i += 1
      else
        @number_of_inversions += left.length - i
        result.push(right[j])
        j += 1
      end
    end

    result += left[i..left.length] if i < left.length
    result += right[j..right.length] if j < right.length
    result
  end

  def merge_sort_and_count(numbers)
    return numbers if numbers.length == 1

    m = numbers.length / 2
    merge( merge_sort_and_count(numbers[0..m-1]),  merge_sort_and_count(numbers[m..numbers.length]) )
  end
end
