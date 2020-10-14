def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  row_index = 0 
  lowest_numbers = [] 
  while row_index < src.count do
    element_index = 0
    lowest_value = src[row_index][0]
    while element_index < src[row_index].count do
      if src[row_index][element_index] < lowest_value
        lowest_numbers.push(src[row_index][element_index])
      else
        lowest_numbers.push(lowest_value)
        element_index += 1
      end
    end
  row_index += 1
  end  
  lowest_numbers
end