require_relative 'linked_list'

class JungleBeat

  attr_accessor :list

  def initialize
    @list = LinkedList.new
  end

  def append(string)
    split_string_array = string.split
    split_string_array.each do |data|
      @list.append(data)
    end
    string
  end

  def count
    @list.count
  end

  def prepend(string)
    split_string_array = string.split
    split_string_array.each do |data|
      @list.prepend(data)
    end
    string
  end

end