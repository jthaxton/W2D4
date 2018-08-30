require 'byebug'
def my_min1(arr)
  sorted = false 
  while sorted == false 
    count = 0 
    sorted = true 
    while count < arr.length - 1
      if arr[count] > arr[count + 1]
        arr[count], arr[count + 1] = arr[count + 1], arr[count]
        sorted = false
      end 
      count += 1 
    end 
  end 
  arr.first
      
  
end 

def my_min2(arr)
  arr.reduce do |min, element|
    if element < min 
      element 
    else 
      min 
    end
  end
end

def sub_sum1(arr)
   
  result = [] 
  hash = Hash.new
  count = 0 
  while count < arr.length 
    counter = 0 
    while counter < arr.length 
      result << arr[count..counter] unless arr[count..counter] == []
      counter += 1 
    end 
    count += 1 
  end 
  result.each do |el|
    hash[el.sum] = el 
  end 
  # debugger
  hash[hash.keys.max]
end 

def sub_sum2(arr)
  best_result = [arr.first]
  best_sum = arr.first
  
  potential_result = []
  potential_sum = 0
  arr.each do |el|
    
    
    potential_result << el 
    potential_sum += el 
    
    
    if potential_sum < el 
      potential_result = [el]
      potential_sum = el
    end
    
    if potential_sum > best_sum
      best_sum = potential_sum
      best_result = potential_result.dup
    end 
  end 
   
  best_result

end 