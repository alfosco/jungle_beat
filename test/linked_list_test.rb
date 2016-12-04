require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

  def test_it_exists
    node = Node.new("plop")
    assert LinkedList.new
  end

  def test_head_return_value
    list = LinkedList.new
    assert_equal nil, list.head
  end

  def test_append_return_value
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
  end

  def test_next_node_return_value
    list = LinkedList.new
    assert_equal nil, list.head.next_node
  end

  def test_count
    list = LinkedList.new
    assert_equal 1, list.count
  end

  def test_to_string
    list = LinkedList.new
    assert_equal "doop", list.to_string
  end

end