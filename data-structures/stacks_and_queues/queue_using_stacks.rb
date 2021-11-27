class Node
  attr_accessor :value, :next
  def initialize(value)
    @value = value
    @next = nil
  end
end

class Stack
  def initialize
    @array = Array.new
  end

  def push(value)
    @array << value
    return @array
  end

  def peek
    return @array[@array.length - 1]
  end

  def pop
    @array.pop
    return @array
  end
end

class Queue
  def initialize
    @first = nil
    @last = nil
    @length = 0
  end

  def peek
    return @first
  end

  def enqueue(stack)
    new_stack = stack

    if (@length == 0)
      @first = new_stack
      @last = new_stack
    else
      @last.next = new_stack
      @last = new_stack
    end

    @length += 1
    return self
  end

  def dequeue

    if (!@first)
      return nil
    end

    if (@first == @last)
      @last = nil
    end

    holding_pointer = @first
    @first = @first.next
    @length -= 1
    return self
  end
end

tech_stocks = Stack.new
tech_stocks.push("FB")
tech_stocks.push("AMZN")
tech_stocks.push("NFLX")
tech_stocks.push("GOOG")
tech_stocks.push("AAPL")

blue_chip_stocks = Stack.new
blue_chip_stocks.push("BRK.A")
blue_chip_stocks.push("KO")
blue_chip_stocks.push("JNJ")
blue_chip_stocks.push("DIS")

stock_portfolio = Queue.new
stock_portfolio.enqueue(tech_stocks)
stock_portfolio.enqueue(blue_chip_stocks)


p stock_portfolio
