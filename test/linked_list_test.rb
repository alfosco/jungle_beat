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

  def test_append_has_return_value
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
  end

  def test_append_returns_different_values
    list = LinkedList.new
    assert_equal "bop", list.append("bop")
  end

  def test_head_data_value
    list = LinkedList.new
    list.append("bloop")
    assert_equal "bloop", list.head.data
  end

  def test_next_node_return_value
    list = LinkedList.new
    list.append("bloop")
    assert_equal nil, list.head.next_node
  end

  def test_count_is_one_after_adding_head
    list = LinkedList.new
    list.append("bloop")
    assert_equal 1, list.count
  end

  def test_to_string
    list = LinkedList.new
    list.append("bloop")
    assert_equal "bloop", list.to_string
  end

end