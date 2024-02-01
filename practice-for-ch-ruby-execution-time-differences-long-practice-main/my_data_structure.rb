class MyQueue

    def initialize
        @queue = []
    end

    def enqueue(ele)
        @queue.push(ele)
    end

    def dequeue
        @queue.shift
    end

    def empty?
        @queue.empty?
    end

    def peek
        @queue[0]
    end

    def size
        @queue.length
    end

end

class MyStack

    def initialize
        @stack = []
        @min_stack = []
        @max_stack = []
    end

    def push(ele)
        @stack.push(ele)
        @min_stack.push(ele) if ele <= @min_stack.last
        @max_stack.push(ele) if ele >= @max_stack.last
    end

    def pop
        @stack.pop
        @min_stack.pop if ele == @min_stack.last
        @max_stack.pop if ele == @max_stack.last
    end

    def empty?
        @stack.empty?
    end

    def peek
        @stack[0]
    end

    def size
        @stack.length
    end

    def min
        @min_stack.last
    end

    def max
        @max_stack.last
    end


end

class StackQueue

    def initialize

        @front_stack = MyStack.new
        @back_stack = MyStack.new
    end

    def enqueue(ele)
        @front_stack.push(ele)

    end

    def dequeue
        if @back_stack.empty?
            @back_stack.push(@front_stack.pop) until @front_stack.empty?
        end
        @back_stack.pop

    end

    def size
        @front_stack.size
    end

    def empty?
        @front_stack.empty?
    end

    def min
        front_min = @front_stack.min
        back_min = @back_stack.min
        front_min < back_min ? front_min : back_min
    end

    def max
        front_max = @front_stack.max
        back_max = @back_stack.max
        front_max < back_max ? front_max : back_max
    end
end
