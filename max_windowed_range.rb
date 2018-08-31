require 'byebug'
def windowed_max_range(arr,window)
  current_max_range = 0 
  counter = 0 
  while counter < arr.length - window + 1
    # debugger
    current_window = arr[counter...counter + window]
    current_range = current_window.max - current_window.min 
    current_max_range = current_range if current_range > current_max_range
    counter += 1 
  end 
  current_max_range
end 

class MyQueue
  
  def initialize(queue = [])
    @queue = queue
  end 
  
  def enqueue(element)
    @queue << element
  end
  
  def dequeue
    @queue.shift
  end 
  
  def size 
    @queue.length 
  end 
  
  def peek 
    @queue[0]
  end 
  
end 

class MyStack 
  
  def initialize(stack = [])
    @stack = stack 
  end 
  
  def push(element)
    @stack.push(element)
  end 
  
  def pop 
    @stack.pop
  end 
  
  def empty?
    @stack.empty?
  end 
  
  def size
    @stack.length
  end 
  
  def peek 
    @stack[-1]
  end 
end 

class StackQueue
  def initialize(stack = MyStack.new)
    @in_stack = stack 
    @out_stack = MyStack.new
  end 
  
  def transfer_stack_over
      until @in_stack.size == 0
        @out_stack.push(@in_stack.pop)
      end
  end
  
  def dequeue
    if @out_stack.size == 0
      transfer_stack_over
    end
    @out_stack.pop
  end
  
  def enqueue(el)
    @in_stack.push(el)
  end 
  
  
end 