def first_anagram?(first, second)
    first.chars.permutation.to_a.any? {|a| a.join == second}
end

def second_anagram?(first,second)
    first.each_char do |char|
        idx = second.chars.find_index(char)
        if idx.nil?
            return false
        else
            second.slice!(idx)
        end
    end
    second.length == 0
end

def third_anagram?(first, second)
    first.chars.sort == second.chars.sort
end

def fourth_anagram?(first, second)
    hash = Hash.new(0)
    first.chars.each {|ele| hash[ele] += 1}
    second.chars.each {|ele| hash[ele] -= 1}
    hash.values.all?(0)
end