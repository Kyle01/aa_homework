class Stack
    def initialize
      @array = []
    end

    def push(el)
      @array.push(el)
      el
    end

    def pop
      @array.pop
    end

    def peek
      @array[-1]
    end
end

class Queue

  def initialize
    @array = []
  end

  def enqueue(el)
    @array.push(el)
    el
  end

  def dequeue
    @array.shift
  end

  def peek
    @array[0]
  end
end

class Map

  def initialize
    @array = []
  end

  def set(key, value)
    pair = @array.index { |pr| pr[0] == key }
    if pair
      @array[pair][1] = value
    else
      @array.push([key, value])
    end
    value
  end

  def get(key)
    @array.each {|el| return el[1] if el [0] == key}
    nil
  end

  def delete(key)
    value = get(key)
    @array.reject! { |pair| pair[0] == key }
    value
  end

  def show
    deep_dup(@array)
  end

  private

  def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
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

#map = Map.new
# p map.set("Boy", "Tom")
# p map.set("Girl", "Sue")
# p map.set("Boy", "Jeff")
# p map.set("Girl", "Jen")
# p map.show
# p map.delete("Girl")
# p map.show
