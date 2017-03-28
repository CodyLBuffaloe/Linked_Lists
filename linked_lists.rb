class LinkedList
  def initialize
  end
  def append #Add a new node to the end of the list
  end
  def prepend #Add a new node to start of list
  end
  def size #Return total num nodes in list
  end
  def head #Return the first node in list
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

class Node
  def initialize
  end
  def value(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end

end

cat = Node.new()
puts cat.value().class