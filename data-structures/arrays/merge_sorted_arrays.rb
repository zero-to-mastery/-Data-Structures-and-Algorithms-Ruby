def merge_sorted_arrays(array1, array2)
  merged_array = []
  array1_item = array1[0]
  array2_item = array2[0]
  i = 1
  j = 1

  if(array1.length == 0)
    return array2
  end

  if(array2.length == 0)
    return array1
  end
  # We can probably make other functions to reference here to make the code more readable
  while(array1_item or array2_item)
    if(!array2_item or array1_item < array2_item)
      merged_array << array1_item
      array1_item = array1[i]
      i += 1
    else
      merged_array << array2_item
      array2_item = array2[j]
      j += 1
    end
  end
  p merged_array
end

merge_sorted_arrays([0,3,4,31], [4,6,30])

