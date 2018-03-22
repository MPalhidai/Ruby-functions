class Stack
  def initialize
    @store = Array.new
  end

  def pop
    @store.pop
  end

  def push(element)
    @store.push(element)
  end

  def size
    @store.size
  end
end



def do_stuff(ar)
	stack = Stack.new
	ar.each do |num|
		if num == -1
			print "#{stack.pop} "
		else
	        stack.push(num)
		end
	end
	puts
end

t = gets.to_i
for i in 1..t do
		n=gets
		ar = gets.strip.split.map {|i| i.to_i}
		do_stuff(ar)
end
