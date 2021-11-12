numbers = [99, 44, 6, 2, 1, 5, 63, 87, 283, 4, 0]

def bubble_sort(array)
   n = array.length
   loop do
     swapped = false
     (n - 1).times do |i|
       if array[i] > array[i + 1]
        #Ruby value swapping technique for array
         array[i], array[i + 1] = array[i + 1], array[i]
         swapped = true
       end
     end
     p swapped
     break if not swapped
   end
   array
end
bubble_sort(numbers)
p numbers
