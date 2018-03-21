class Node

	attr_accessor :next
	attr_reader :data
	#your node code here
	def initialize(data = nil, nextNode = nil)
        @data = data
        if nextNode != nil
            @next = nextNode
        end
	end

end

class LinkedList
	#setup head and tail
  attr_reader :size

  def initialize
  	@head = nil
  	@tail = @head
  	@size = 0
  end

  def add(index = nil,number)
	#your code here
    if index != nil
        if index != 0
          auxNode = get(index - 1)
        else
          auxNode = @head
        end
        auxNode.next = Node.new(number, auxNode.next)
    elsif @head == nil
		@head = Node.new(number)
		@tail = @head
	else
		@tail.next = Node.new(number)
		@tail = @tail.next
	end
	@size += 1
	#puts @tail.data
  end

  def get(index)
  	#your code here
  	myNode = @head
  	index.times do
  		myNode = myNode.next
  	end
  	myNode
  end

  def remove(index)
    if index != 0
     puts get(index).data
     auxNode = get(index - 1)
     auxNode.next = auxNode.next.next
    elsif index == @size
    #tail
     @tail = get(index - 1)
     @tail.next = nil
    else
      puts @head.data
      @head = get(1)
    end
      @size -= 1
  end

end


def do_stuff(a, b)
	if a == -9
		@list.add(b)
	elsif a == -6
        puts @list.get(b).data
    elsif a == -1
        #remove
        @list.remove(b)
    else
        @list.add(a,b)
	end
end

#boilerplate code
t = gets.to_i
@list = LinkedList.new
for i in 1..t do
	a, b = gets.strip.split.map {|i| i.to_i}
	do_stuff(a, b)
end
