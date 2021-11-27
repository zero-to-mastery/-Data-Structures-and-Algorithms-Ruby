# Given and array = [2,5,1,2,3,5,1,2,4]
# It should return 2

# Given and array = [2,1,1,2,3,5,1,2,4]
# It should return 1

# Given and array =[2,3,4,5]
#It should return undefined

# This is Andrei's answer
def first_recurring_character(input)
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
p first_recurring_character([2,5,1,2,3,5,1,2,4])

# case 2.)
p first_recurring_character([2,1,1,2,3,5,1,2,4])

# case 3.)
p first_recurring_character([2,3,4,5])
