class MyStack
  @stack

  def initialize
    @stack = []
  end

  def empty?
    @stack.count == 0
  end

  def size
    @stack.count
  end

  def clear
    @stack.each_index {|i| @stack.delete_at(i) }
  end

  def push(data)
    @stack += [data]
  end

  def pop
    @stack.pop
  end

  def pick
    @stack.last
  end
end
