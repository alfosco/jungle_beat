require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test

  def test_it_exists
    assert Node.new("plop")
  end

  def test_return_value_of_data
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_return_value_of_next_node
    node = Node.new("plop")
    assert_equal nil, node.next_node
  end

end