strings = ['a', 'b', 'c', 'd']
# 4*4 = 16 bytes of storage is used

p strings[2]

#push             #0(1)
strings.push('e')
# or we can push like this too
strings << 'e'

#pop                #0(1)
strings.pop

#add_first_element  #0(n)
strings.insert(0, 'x')

#splice             #0(n)
strings.splice(2, 'alien')

p strings
