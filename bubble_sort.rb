require 'pry'
def bubble_sort(array)
  swap = 1
  sorted_element = 0
  while swap != 0
    swap = 0
    array.each_with_index do |_item, index|
      break if index == array.length - 1 - sorted_element

      # binding.pry
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        swap += 1
      end
    end
    sorted_element += 1
  end
  array
end
a = [4, 3, 78, 2, 0, 2]
p bubble_sort(a)
