def bubble_sort(array = [4, 3, 78, 2, 0, 2])
  swap = 1
  sorted_element = 0
  while swap != 0
    swap = 0
    array.each_with_index do |_item, index|
      break if index == array.length - 1 - sorted_element

      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        swap += 1
      end
    end
    sorted_element += 1
  end
  array
end

def bubble_sort_by(array = [4, 2, 1, 7], &procedure)
  (0...array.size).each do |_g|
    (0...array.size).each do |l|
      next if l + 1 == array.size

      value = yield(array[l], array[l + 1])
      next unless value.positive?
      

      aux = array[l + 1]
      array[l + 1] = array[l]
      array[l] = aux
    end
  end
  array
end

procedure = Proc.new { |x,y| x - y}
