
def sluggish_octopus(fishes)
  fishes.each_with_index do |fish1, i1|
    max_length = true

    fishes.each_with_index do |fish2, i2|
      next if i1 == i2
      max_length = false if fish2.length > fish1.length
    end

    return fish1 if max_length
  end
  #   k = 0
  #   answer = nil
  #   while k < array.length-1
  #     i = k + 1
  #     while i < array.length
  #       answer = array[i] if array[i].length > array[k].length && array[i].length > answer.length
  #       i += 1
  #     end
  #     k += 1
  #   end
  #   answer
  # end
end

def dominant_octopus(array)
  merge_sort(array).last
end

def merge_sort(array)
  return array if array.length <= 1
  middle = array.length/2
  left = merge_sort(array[0..middle-1])
  right = merge_sort(array[middle..-1])
  merge_helper(left,right)
end

def merge_helper(left, right)
  answer = []

  until left.empty? || right.empty?
    if left.first.length <= right.first.length
      answer << left.shift
    else
      answer << right.shift
    end
  end

  answer + left + right
end

def clever_octopus(array)
  answer = nil
  array.each do |fish|
    answer = fish if answer == nil || fish.length > answer.length
  end
  answer
end

array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
puts sluggish_octopus(array)
puts dominant_octopus(array)
puts clever_octopus(array)

tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def slow_dance(direction, tiles_hash)
    tiles_hash.each_with_index do |tile, num|
      return num if tile == direction
    end
end

def fast_dance(direction, tiles_hash)
  tiles_hash[direction]
end


puts slow_dance("down", tiles_hash)
puts fast_dance("down", tiles_hash)
