array = [1,2,3]
def permutations(array, index=0,array_list)
  if index == array.length
    a = array.clone
    array_list<<a
  end
  (index..array.length-1).each do |swap|
    array[index], array[swap] = array[swap], array[index]
    permutations(array, index+1,array_list)
  end
end
array_list = []
permutations(array,array_list)
print array_list.uniq!