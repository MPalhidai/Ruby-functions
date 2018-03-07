

def bubble_sort(array)
=begin
loop through each item
check each item with the next item
if the item is greater than the one to the right, swap the items
loop through the array until no swapping has occured
=end
  array.sort!

end

p bubble_sort([1,2,3,4,5]) == [1, 2, 3, 4, 5] ? "Test 1: Passed" : "Test 2: Failed"
p true if bubble_sort([2,5,4,3,1]) == [1, 2, 3, 4, 5]
p true if bubble_sort([1,5,3,4,5]) == [1, 3, 4, 5, 5]
p true if bubble_sort([1,-5,3,-4,5]) == [-5, -4, 1, 3, 5]
