# Given and array = [2,5,1,2,3,5,1,2,4]
# It should return 2

# Given and array = [2,1,1,2,3,5,1,2,4]
# It should return 1

# Given and array =[2,3,4,5]
#It should return undefined

# This is my original answer
def first_recurring_character(input)
  map = Hash[array.collect{|item| [item, 0 ]}]
  input.each do |value|
    map[value] += 1
    if map[value] == 2
      return value
    end
  end
  return nil
end


# This is Andrei's answer
def first_recurring_character2(input)
  map = {}
  input.each do |value|
    if(map[value] != nil)
      return value
    else
      map[value] = value
    end
  end
  return nil
end

# case 1.)
p first_recurring_character2([2,5,1,2,3,5,1,2,4])

# case 2.)
p first_recurring_character2([2,1,1,2,3,5,1,2,4])

# case 3.)
p first_recurring_character2([2,3,4,5])
