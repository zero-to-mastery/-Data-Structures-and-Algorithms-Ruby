def reverse_string(string)
  #Base case
  if string == ""
    return ""
  else
    return reverse_string(string[1,string.length - 1]) + string[0]
  end
end

p reverse_string('string')
