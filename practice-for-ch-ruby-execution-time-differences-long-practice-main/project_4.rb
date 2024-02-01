require_relative 'my_data_structure.rb'

def naive_max_range(arr, wlen)
    max_found = 0
    (0..arr.length-wlen).each do |idx|
        range = arr.slice(idx, wlen)
        diff = range.max - range.min
        max_found = diff if diff > max_found
    end
    max_found
end


p naive_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p naive_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p naive_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p naive_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8


def max_range(arr, wlen)
    queue = StackQueue.new
    max_found = 0
    arr.each do |ele|
        queue.enqueue(ele)
        next if queue.size < wlen
        queue.dequeue if queue.size > wlen
        diff = queue.max - queue.min
        max_found = diff if diff > max_found

    end
    max_found
end
