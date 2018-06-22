class Stack
    def initialize
      # create ivar to store stack here!
    end

    def push(el)
      # adds an element to the stack
    end

    def pop
      # removes one element from the stack
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
    end
end

class Queue

  def initialize
    @array = []
  end

  def enqueue(el)
    @array.push(el)
  end

  def dequeue
    @array.shift
  end

  def peek
    @array[0]
  end
end

class Map
  def set(key, value)
  end

  def get(key)
  end

  def delete(key)
  end

  def show
  end
end

# stack = Stack.new
# p stack.push(1)
# p stack.push(2)
# p stack.push(3)
# p stack.push(4)
# p stack.peek
# p stack.pop
# p stack.pop
# p stack.peek

# queue = Queue.new
# p queue.enqueue(1)
# p queue.enqueue(2)
# p queue.enqueue(3)
# p queue.enqueue(4)
# p queue.peek
# p queue.dedequeue
# p queue.dedequeue
# p queue.peek
