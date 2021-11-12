#1.) Loop through array
#2.) Loop through array only partially current index to length - 1
  #2.a) if next value is greater store index number
  # 2b) Swap values at the end

numbers = [99, 44, 6, 2, 1, 5, 63, 87, 283, 4, 0]

def selection_sort(array)
  length = array.length
  array.each_with_index do |value, i|
    j = 0
    low_value = value
    if (i == length - 1)
      break
    end
    (i + 1..length-1).each do |n|
      if (array[n] < low_value)
        j = n
        low_value = array[n]
      end
    end
    array[i], array[j] = array[j], array[i]
    # p "#{i}: #{array}"
  end
end
p numbers
selection_sort(numbers)
p numbers


