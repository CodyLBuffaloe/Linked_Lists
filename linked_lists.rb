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
    @head = Node.new
    @tail = @head
  end
  def append(value) #Add a new node to the end of the list
    node_to_add = Node.new(value)
    if(@head == nil)
      @head = node_to_add
      @tail = @head
    else
      @tail.next_node = node_to_add
      @tail = node_to_add
    end
  end
  def prepend(value) #Add a new node to start of list
    node_to_add = Node.new(value)
    if(@head == nil)
      @head = node_to_add
      @tail = @head
    else
      node_to_add.next_node = @head
      @head = node_to_add
    end
  end
  def size #Return total num nodes in list
    current_node = @head
    i = 0
    until current_node == nil do
      current_node = current_node.next_node
      i += 1
    end
    i
  end
  def head #Return the first node in list
    @head.value
  end
  def tail #Return the last node in list
    @tail.value
  end
  def at(index) #Return node at specified index
    if(index > self.size)
      print "Index out of bounds!"
      return nil
    end
    i = @head
    1.upto(index) do
      i = i.next_node
    end
    i.value
  end
  def pop #Remove tail node from list
    if(@head.value == nil)
      print "List empty, there is nothing to delete."
      return nil
    elsif(@head == @tail)
      node_to_delete = @head
      @head = nil
      @tail = nil
      print "Node that contained #{node_to_delete.value} deleted."
    else
      find_tail = @head
      until find_tail == @tail do
        find_tail = find_tail.next_node
      end
      node_to_delete = @tail
      @tail = find_tail
      print "Node that contained #{node_to_delete.value} was deleted."
    end
  end
  def contains?(data) #Return true if argument matches item in list, false if not
    datum = @head
    while(datum.next_node != nil)
      if(datum.value == data)
        print true
        return true
      end
      datum = datum.next_node
    end
    print false
    return false
  end
  def find(data) #Return index of node containing specified data, nil if false
    start = @head
    i = 0
    while(start != nil)
      if(start.value == data)
        print "The value you requested is located at index #{i}."
        return i
      end
      start = start.next_node
      i += 1
    end
    print "Data was not found in this list."
    return nil
  end
  def to_s #Print out the entire list as strings, like the example below
    list = ""
    node = @head
    while(node != nil)
      list << "(#{node.value}) -> "
      node = node.next_node
    end
    list << "nil"
    print list
  end
#Extra Credit:
def insert_at(index) #Inserts data to given index
end
def remove_at(index) #Removes node at given index, updates list with new node locations
end
end




cattery = LinkedList.new
cattery.prepend("quince")
cattery.append("nibs")
cattery.to_s

