def bubble_sort(array)

  def swap_elems!(a, b)
    self[a], self[b] = self[b], self[a]
  end

  for i in 1..array.length - 1
    array.each_with_index do |num, index|
      break if array[index + 1] == nil
      if num > array[index + 1]
        array.swap_elems!(index, index + 1)
      end
    end
    i += 1
  end

  array
end

p bubble_sort([4,3,78,2,0,2])