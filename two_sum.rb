def two_sum?(arr, target_sum)
  
  result = []
  
  (0...arr.length-1).each do |i|
    (i+1...arr.length).each do |j|
      return true if (arr[i] + arr[j]) == target
    end
  end
  result
  
end