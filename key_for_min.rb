# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  num_collection = name_hash.collect { |name, number| number }
  num_collection.each do |num|
    if num_collection[num] == num_collection[num + 1]
      0
    elsif num_collection[num] > num_collection[num + 1]
      1
    elsif num_collection[num] < num_collection[num + 1]
      -1
    end
  end
  num_collection
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
