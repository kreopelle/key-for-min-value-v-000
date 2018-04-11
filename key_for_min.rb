# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  name_hash.collect do |name, value|
      value <=> value[+1]
    end
  end
end




=begin
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
