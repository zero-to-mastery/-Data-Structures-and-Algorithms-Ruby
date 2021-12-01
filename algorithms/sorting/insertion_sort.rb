numbers = [99, 44, 6, 2, 1, 5, 63, 87, 283, 4, 0]
def insertion_sort(array)
  for i in 1...(array.length)
    j = i
    while j > 0
      if array[j-1] > array[j]
        temp = array[j]
        array[j] = array[j-1]
        array[j-1] = temp
      else
        break
      end
      j = j - 1 # Step 5
    end
  end
  return array
end

p(numbers)
insertion_sort(numbers)
p numbers
