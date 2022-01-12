# frozen_string_literal: true

# a linked list
class LinkedList
  include Enumerable

  def initialize
    @first_node = nil
  end

  def tail
    node = @first_node

    return nil if node.nil?

    node = node.next until node.next.nil?
    node
  end

  def head
    @first_node
  end

  def append(value)
    if @first_node.nil?
      @first_node = Node.new(value)
      return
    end

    tail.next = Node.new(value)
  end

  def prepend(value)
    if @first_node.nil?
      @first_node = Node.new(value)
      return
    end

    node = Node.new(value)
    node.next = @first_node
    @first_node = node
  end

  def insert_at(value, index)
    parent_node = at(index - 1)
    child_node = parent_node.next
    parent_node.next = Node.new(value)
    parent_node.next.next = child_node
  end

  def remove_at(index)
    parent_node = at(index - 1)
    parent_node.next = parent_node.next.next
  end

  def at(location)
    return nil if location > size - 1 || location.negative?

    each_with_index  do |node, index|
      return node if index == location
    end
  end

  def find(value)
    each_with_index do |node, index|
      return index if node.value == value
    end
    nil
  end

  def contains?(value)
    return true unless find(value).nil?

    false
  end

  def pop
    at(size - 2).next = nil
  end

  def each
    return to_enum unless block_given?

    node = @first_node

    until node.next.nil?
      yield node
      node = node.next
    end
    yield node
  end

  def size
    reduce(0) { |memo| memo + 1 }
  end

  def to_s
    reduce('') { |string, node| string + "(#{node.value}) -> " } + 'nil'
  end
end

# Node in a linked list
class Node
  attr_accessor :value, :next

  def initialize(value = nil)
    @value = value
    @next = nil
  end
end
