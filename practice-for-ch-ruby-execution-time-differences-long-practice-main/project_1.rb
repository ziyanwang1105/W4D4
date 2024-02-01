def my_min(arr)

    arr.each{ |num1| arr.all?{|num2| num1 < num2}}

end

def my_min_2(arr)

    arr.inject(10000000){|acc, ele| ele < acc ? ele : acc}
end


def largest_contiguous_subsum(arr)

    subarrays = []
    (0...arr.length).each do |i|
        subarray = []
        (i...arr.length).each do |j|
            subarray << arr[j]
            subarrays << subarray.dup
        end
    end
    subarrays.map{|ele| ele.reduce(:+)}.max
end

def lcs(arr)
    largest = -1000000
    current = 0
    arr.each do |num|
#kadane algorithm
        current += num
        largest = current if largest < current
        current = 0 if current < 0
    end

    return largest
end
