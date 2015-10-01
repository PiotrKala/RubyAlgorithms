module Helpers
  def is_sorted(array)
    i = 0;
    while i + 1 < array.length
      return false if array[i] > array[i + 1]
      i += 1
    end
    true
  end

  def read_numbers_from_file_by_line(filename)
    contents = File.readlines(filename)
    contents.map { |ele| ele.to_i }
  end 
end
