# Please see https://www.honeybadger.io/blog/ruby-merge-sort/ for more info
numbers = [99, 44, 6, 2, 1, 5, 63, 87, 283, 4, 0]

def merge_sort(numbers)

  num_elements = numbers.length
  if num_elements <= 1
    return numbers
  end

  half_of_elements = (num_elements / 2).round

  left  = numbers.take(half_of_elements)
  right = numbers.drop(half_of_elements)

  sorted_left = merge_sort(left)
  sorted_right = merge_sort(right)

  merge(sorted_left, sorted_right)
end

def merge(left_array, right_array)
  if right_array.empty?
    return left_array
  end

  if left_array.empty?
    return right_array
  end

  smallest_number = if left_array.first <= right_array.first
    left_array.shift
  else
    right_array.shift
  end

  recursive = merge(left_array, right_array)

  [smallest_number].concat(recursive)
end

p merge_sort(numbers)
