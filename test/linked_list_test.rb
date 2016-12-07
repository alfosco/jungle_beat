require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

  def test_it_exists
    list = LinkedList.new
    
    assert_equal LinkedList, list.class
  end

  def test_head_is_initialized_as_nil
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

  def test_next_node_is_nil_when_there_is_one_node
    list = LinkedList.new
    list.append("bloop")

    assert_equal nil, list.head.next_node
  end

  def test_count_is_one_after_adding_head
    list = LinkedList.new
    list.append("bloop")

    assert_equal 1, list.count
  end

  def test_to_string_returns_string_of_linked_lists_data
    list = LinkedList.new
    list.append("bloop")

    assert_equal "bloop", list.to_string
  end

  def test_it_counts_two_nodes
    list = LinkedList.new
    list.append("bloop")
    list.append("wop")

    assert_equal 2, list.count
  end

  def test_it_returns_data_of_two_nodes_in_a_string
    list = LinkedList.new
    list.append("bloop")
    list.append("wop")

    assert_equal "bloop wop", list.to_string
  end

  def test_it_prepends_and_returns_data_of_three_nodes_in_a_string
    list = LinkedList.new
    list.append("bloop")
    list.append("wop")
    list.prepend("ziggy")

    assert_equal "ziggy bloop wop", list.to_string
    assert_equal 3, list.count
  end

  def test_it_inserts_a_node_to_a_specific_position_of_existing_list
    list = LinkedList.new
    list.append("bloop")
    list.append("wop")
    list.prepend("ziggy")
    list.insert(1, "zap")

    assert_equal "ziggy zap bloop wop", list.to_string
    assert_equal 4, list.count
  end

  def test_it_inserts_a_node_to_a_different_specific_position_of_existing_list
    list = LinkedList.new
    list.append("bloop")
    list.append("wop")
    list.prepend("ziggy")
    list.insert(2, "zap")

    assert_equal "ziggy bloop zap wop", list.to_string
    assert_equal 4, list.count
  end

end