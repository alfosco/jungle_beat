require_relative 'node'
require 'pry'

class LinkedList

  attr_accessor :head,
                :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(data)
    @count += 1
    @head
    if @head == nil
      @head = Node.new(data)
    else
      until current_node.next_node == nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end
    # @count += 1
    # current_node = @head
    # if current_node == nil
    #   current_node = Node.new(data)
    # elsif current_node.next_node == nil
    #   current_node.next_node = Node.new(data)
    # else
    #   until current_node.next_node == nil
    #     current_node.next_node = Node.new(data)
    #   end
    # end
    # data
  end

  def to_string
    current_node = @head
    #binding.pry
    data_array = Array.new
    data_array << current_node.data
      until current_node.next_node == nil
        current_node = current_node.next_node
        data_array << current_node.data
      end
    data_array.join(" ")
  end

  def prepend(data)
    @count += 1
    temp_list = @head
    @head = Node.new(data)
    head.next_node = temp_list
  end

  def insert(position, data)
    @count += 1
    index_count = 1
    current_node = @head
    new_node = Node.new(data)
    until index_count == position
      index_count += 1
      current_node = current_node.next_node
    end
    temp_list = current_node.next_node
    current_node.next_node = new_node
    current_node.next_node.next_node = temp_list
    data
  end

  def find(position, num_of_data)
    index_count = 0
    current_node = @head
    data_array = Array.new
    until index_count == position
      index_count += 1
      current_node = current_node.next_node
    end
    num_of_data.times do
      data_array << current_node.data
      current_node = current_node.next_node
    end
    data_array.join(" ")
  end

  def include?(data)
    current_node = @head
    until current_node.data == data
      current_node = current_node.next_node
      return false if current_node.next_node.nil?
    end
    true
  end

  def pop
    current_node = @head
    until current_node.next_node.next_node == nil
      current_node = current_node.next_node
    end
    pop_data = current_node.next_node.data
    current_node.next_node = nil
    pop_data
  end

end