require 'byebug'

def anagram1?(str1, str2)
  perm1 = str1.split('').permutation(str1.length).to_a
  if perm1.include?(str2.split(''))
    true 
  else 
    false
  end
end 

def anagram2?(str1,str2)
  spl1 = str1.split('')
  spl2 = str2.split('')
  
  spl1.each do |char|
    idx = spl2.find_index(char)
    spl2.delete_at(idx) unless idx.nil?
  end
  
  spl2.empty? ? true : false
end 

def anagram3?(str1, str2)
  str1.split('').sort == str2.split('').sort
end

def anagram4?(str1, str2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)
  
  str1.split('').each do |char|
    hash1[char] += 1
  end
  
  str2.split('').each do |char|
    hash2[char] += 1
  end

  # debugger
    
  hash1.each do |char, count|
    return false unless count == hash2[char]
  end
  
  true
end
  