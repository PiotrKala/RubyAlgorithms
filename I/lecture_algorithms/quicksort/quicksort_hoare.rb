def choose_pivot(array, lo, hi)
 random = Random.new
 array[random.rand(lo..hi)]
end

def partition(array, lo, hi)
  pivot = choose_pivot(array, lo, hi)
  i = lo
  j = hi
  loop do
    loop do
      break if array[j] <= pivot
      j -= 1
    end
    loop do
      break if array[i] >= pivot
      i += 1
    end
    if i < j
      tmp = array[i]
      array[i] = array[j]
      array[j] = tmp
    else
      return j
    end
  end
end

def quicksort(array, lo, hi)
  return array if hi <= lo
  p = partition(array, lo, hi)
  quicksort(array, lo, p - 1)
  quicksort(array, p + 1, hi)
end
