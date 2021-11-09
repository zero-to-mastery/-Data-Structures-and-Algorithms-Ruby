# Write two functions that finds the factorial of any number. One should use recursive, the other should just use a for loop

def find_factorial_recursive(n)
  # Base case
  return 2 if n == 2
  # Recusrsive Call
  n * find_factorial_recursive(n - 1)
end

def find_factorial_iterative(n)
  factorial_array = (2..n).to_a
  total = 1
  factorial_array.each do|factorial|
    total *= factorial
  end
  return total
end

p find_factorial_recursive(4)
p find_factorial_iterative(4)
