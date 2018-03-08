def bubble_sort(array)
=begin
loop through each item
check each item with the next item
if the item is greater than the one to the right, swap the items
loop through the array until no swapping has occurred
=end

  sorted = false
  while !sorted
    sorted = true
    for i in (1..array.length-1)
      if array[i-1] > array[i]
        array[i-1], array[i] = array[i], array[i-1]
        sorted = false
      end
    end
  end
  return array
end

def bubble_sort_by(array)
  return_array = []
  array.each_cons(2) do |elem|

    case yield(elem)
    when 1
      p elem
      puts "Left is bigger"
    when 0
      p elem
      puts "They're the same"
    when -1
      p elem
      puts "Right is bigger"
    end
  end
  #array
end


p bubble_sort_by([1,1,-5,3,-4,5]) {|left, right| left <=> right }


#p bubble_sort([1,-5,3,-4,5]) == [-5, -4, 1, 3, 5] ? "Test 4: Passed" : "Test 4: Failed"

#randomArray = 999.times.map{Random.rand(-99999..99999)}
#p bubble_sort(randomArray) == randomArray.sort ? "Test 5: Passed" : "Test 5: Failed"
