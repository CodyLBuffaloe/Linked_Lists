class Node
     attr_accessor :value, :next_node
     def initialize(value = nil, next_node = nil)
       @value = value
       @next_node = next_node
     end
     def value
       @value
     end
end

class LinkedList
  def initialize
    @head = Node.new("head", nil)
  end
  def append #Add a new node to the end of the list

  end
  def prepend(value) #Add a new node to start of list
    @head = Node.new(value, @head.next_node)
  end
  def size #Return total num nodes in list
  end
  def head #Return the first node in list
    @head.value
  end
  def tail #Return the last node in list
  end
  def at(index) #Return node at specified index
  end
  def pop #Remove tail node from list
  end
  def contains?(data) #Return true if argument matches item in list, false if not
  end
  def find(data) #Return index of node containing specified data, nil if false
  end
  def to_s #Print out the entire list as strings, like the example below
    puts "(data) -> (data) -> (data) -> nil"
  end
#Extra Credit:
def insert_at(index) #Inserts data to given index
end
def remove_at(index) #Removes node at given index, updates list with new node locations
end
end




cattery = LinkedList.new
puts cattery.head
cattery.prepend("butt")
puts cattery.head