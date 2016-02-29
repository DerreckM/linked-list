class LinkedList
  def initialize(value)
    @head = Node.new(value, nil)
  end

  def get_value_at(index)
    if @head
      node.head
    else
      index.times do
        node.link
      end
    end
    node.data
  end


def <<(new_data)
  n = Node.new(new_data)
  n.next = @head
  @head = n
end

def shift_value_in_linked_list
  node_being_returned = @head
  @head = @head.link
  node_being_returned
end

def pop_value_in_linked_list
  @head = @head.link
end
                                                                                                end
  end
end
