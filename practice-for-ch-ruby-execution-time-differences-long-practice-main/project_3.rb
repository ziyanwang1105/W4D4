def bad_two_sum?(arr, target)

    arr.combination(2).any?{|ele| ele.reduce(:+) == target}

end

def two_sum?(arr, target)

    hash = {}
    arr.each do |ele|
        y_potential = target - ele
        if hash[y_potential]
            return true
        else
            hash[ele] = true
        end
    end
    false

end
arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false
