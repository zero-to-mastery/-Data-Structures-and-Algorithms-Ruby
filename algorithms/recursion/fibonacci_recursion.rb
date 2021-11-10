=begin

Given a number N return the index value of the Fibonacci
sequence, where the sequence is:

0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144 ...

the pattern of the sequence is that each value is the sum
of the 2 previous values, that means that for N=5 → 2+3

For example: fibonacciRecursive(6) should return 8

=end

def fibonacci_iterative(n)
  fibonacci_array = [0, 1]
  count = n - 1
  i = 0
  j = 1
  current_value = 0
  while count >= 1 do
    current_value = fibonacci_array[i] + fibonacci_array[j]
    fibonacci_array << current_value
    i += 1
    j += 1
    count -= 1
  end
  return current_value
end

p fibonacci_iterative(8)

def fibonacci_recursive(n)
  # Base case :  when N is less than 2.
  if n < 2
    n
  else
    n

    # Recursive call : sum of last two Fibonacci's.
    fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2)
  end
end

p fibonacci_recursive(8)
