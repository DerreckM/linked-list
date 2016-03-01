class LinkedList
  #class Node is private only to class LinkedList
  class Node
    def initialize(data, link)
      @data = data
      @link = link
    end
    def data
      @data
    end
    def link
      @link
    end
  end

  def initialize
    @head = nil
  end

  def unshift(data)
    @head = Node.new(data, @head)
    self
  end

  def shift
    return nil unless @head
    data = @head.data
    @head = @head.link
    data
  end

  def [](index)
    return nil unless @head
    #local variable node, instance variable head
    node = @head
    while node && index > 0
      node = node.link
      index -= 1
    end
    node && node.data
  end
end

list = LinkedList.new
list.unshift('c').unshift('b').unshift('a')
list[0] # => "a"
list[1] # => "b"
list[2] # => "c"
list[3] # => nil
list.shift # => "a"
list.shift # => "b"
list.shift # => "c"
list.shift # => nil
