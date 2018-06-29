class LRUCache
   def initialize
     @items = []
   end

   def count
     @items.length
   end

   def add(el)
     unless @items.include?(el)
       @items << el
     end
   end

   def show
     puts @items
   end

 end

puts johnny_cache = LRUCache.new

puts johnny_cache.add("I walk the line")
puts johnny_cache.add(5)

puts johnny_cache.count # => returns 2

puts johnny_cache.add([1,2,3])
puts johnny_cache.add(5)
puts johnny_cache.add(-5)
puts johnny_cache.add({a: 1, b: 2, c: 3})
puts johnny_cache.add([1,2,3,4])
puts johnny_cache.add("I walk the line")
puts johnny_cache.add(:ring_of_fire)
puts johnny_cache.add("I walk the line")
puts johnny_cache.add({a: 1, b: 2, c: 3})
