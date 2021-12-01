def reverse_string(string)
  #check for valid input
  count = string.length
  backwards = ""

  while count > 0
    backwards = backwards + (string[count - 1])
    count -= 1
  end
  p backwards
end


reverse_string("Timbits Hi!")
