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
