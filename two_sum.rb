def bad_two_sum?(arr, target_sum)
  result = []
  (0...arr.length-1).each do |i|
    (i+1...arr.length).each do |j|
      return true if (arr[i] + arr[j]) == target_sum
    end
  end
  false
end

def okay_two_sum?(arr, target_sum)
  sorted = arr.sort 
  sorted.each do |el|
    return true if (sorted.bsearch {|diff| diff == target_sum - el}) != nil
  end
  false
end

def two_sum?(arr, target_sum)
  sum_hash = Hash.new()
  arr.each do |el|
    return true if sum_hash[target_sum - el]
    sum_hash[el] = true
  end
  false
end