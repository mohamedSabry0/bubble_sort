def bubble_sort(array)
  swap = 1
  sorted_element = 0
  while swap != 0
    swap = 0
    for j in 0...array.length - sorted_element - 1 do
      if array[j] > array[j + 1]
        array[j], array[j + 1] = array[j + 1], array[j]
        swap += 1
      end
    end
    sorted_element += 1
  end
  array
end
a = [4, 3, 78, 2, 0, 2]
bubble_sort(a)
