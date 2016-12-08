require 'minitest/autorun'
require 'minitest/pride'
require './lib/jungle_beat'

class JungleBeatTest < Minitest::Test

  def test_it_exists
    jb = JungleBeat.new
    assert_equal JungleBeat, jb.class
  end

  def test_jb_has_an_empty_list_by_default
    jb = JungleBeat.new
    assert_equal nil, jb.list.head
  end

  def test_append_makes_a_string_into_multiple_nodes
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    
    assert_equal "deep", jb.list.head.data
    assert_equal "doo", jb.list.head.next_node.data
  end

  def test_count_counts
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")
    assert_equal 6, jb.count
  end

  def test_prepend_makes_a_string_into_multiple_nodes
    jb = JungleBeat.new
    jb.prepend("deep doo ditt")
    
    assert_equal "ditt", jb.list.head.data
    assert_equal "doo", jb.list.head.next_node.data
    assert_equal 3, jb.count
  end

  def test_play_plays_data_from_nodes_as_audio
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")

    assert_equal 6, jb.count
    assert_equal 6, jb.list.count
    jb.play #plays the sound of string passed into append
  end

end