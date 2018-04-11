# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  current_lowest_value = nil
  current_lowest_key = nil
  name_hash.collect do |k,n|
    if current_lowest_value.nil?
      current_lowest_value = n
      current_lowest_key = k
    elsif current_lowest_value > n
      current_lowest_value = n
      current_lowest_key = k
    end
  end
  current_lowest_key
end

=begin
def swap_elements_from_to(array, index, destination_index)
  swapped_array = array
  swapped_array << array[index]
  swapped_array[index] = array[destination_index]
  swapped_array[destination_index] = swapped_array[-1]
  swapped_array.pop
  swapped_array
end

if a == b
  0
elsif a > b
  -1
elsif a < b
  1
end
end
end


def key_for_min_value(name_hash)
  min_key = ""
  value_array = []
  if name_hash.length == 0
    nil
  else
    name_hash.each do |key, value|
      value_array << value
    end
    value_array.each do |value|
      if value_array[value] == value_array[value + 1]
        0
      elsif value_array[value] > value_array[value + 1]
        1
      elsif value_array[value] < value_array[value + 1]
        -1
      end
    end
    name_hash.find do |key, value|
      if value_array[0] == key
        return key
      end
    end
  end
end
=end
