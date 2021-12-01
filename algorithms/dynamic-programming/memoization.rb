#Caching is a way to store values and use them later on.
# Very good to optimize speed complexity.

def add_to_80(n)
  return n + 80
end

p add_to_80(5)
p add_to_80(5)

#Memoization 1

#Global variable was set to allow access within memoized_add_to_80
CACHE = {}

def memoized_add_to_80(n)
  if(CACHE.has_key?(n))
    p "Not such a long time"
    return CACHE[n]
  else
    p "long time!"
    CACHE[n] = n + 80
  end
end
# p add_to_80(5)
p memoized_add_to_80(5)
p memoized_add_to_80(5)

#Memoization 2

#We don't want CACHE to live in global scope

def memoized_add_to_80(n)
  CACHE = {}
  return def(n)
    if(CACHE.has_key?(n))
      p "Not such a long time"
      return CACHE[n]
    else
      p "long time!"
      CACHE[n] = n + 80
    end
  end
end

