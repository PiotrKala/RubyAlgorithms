class ComparisionNumber
  attr_reader :comparision_number, :test_number, :pivot

  def initialize(pivot='rand')
    @comparision_number = 0
    @test_number = 0
    @pivot = pivot
  end

  def mediana_pivot(array, lo, hi)
    first = array[lo]
    last = array[hi]
    mid = array[(hi-lo) / 2 + lo]
    return lo if first <= last && first >= mid || first >= last && first <= mid
    return hi if last <= first && last >= mid || last >= first && last <= mid
    return ((hi-lo) / 2 + lo)if mid <= last && mid >= first || mid >= last && mid <= first
  end

  def choose_pivot(array, lo, hi)
   random = Random.new
   return random.rand(lo..hi) if @pivot.to_s == 'rand'
   return hi if @pivot.to_s == 'hi'
   return lo if @pivot.to_s == 'lo'
   return mediana_pivot(array, lo, hi) if @pivot.to_s == 'med'
  end

  def swap(array, i, j)
    tmp = array[j] 
    array[j] = array[i]
    array[i] = tmp
  end

  def partition(array, lo, hi)
    @comparision_number += hi - lo
    pivot_index = choose_pivot(array, lo, hi)
    pivot = array[pivot_index]
    swap(array, lo, pivot_index)
    i = lo + 1
    j = i
    loop do
      break if j > hi
      if array[j] < pivot
        swap(array, i, j)
        i += 1
      end
      j += 1
    end
    swap(array, lo, i - 1)
    i - 1
  end

  def quicksort(array, lo, hi)
    return array if hi <= lo
    p = partition(array, lo, hi)
    quicksort(array, lo, p - 1)
    quicksort(array, p + 1, hi)
  end
end
