def my_min(arr)

    arr.each{ |num1| arr.all?{|num2| num1 < num2}}

end

def my_min_2(arr)

    arr.inject(10000000){|acc, ele| ele < acc ? ele : acc}
end
