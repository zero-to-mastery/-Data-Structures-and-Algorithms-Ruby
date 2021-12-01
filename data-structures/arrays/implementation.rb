#class name
class MyArray
  attr_accessor :length, :data
  #constructor
  def initialize
    #instance variable initialization
    @length = 0
    @data = {}
  end

  def get(index)
    return @data[index]
  end

  def push(item)
    @data[@length] = item
    @length += 1
    return @data
  end

  def pop
    last_item = @data[@length - 1]
    @data.delete(length - 1)
    @length -= 1
    return last_item
  end

  def delete_at_index(index)
    item = @data[index]
    self.shift_items(index)
    return item
  end

  def shift_items(index)
    for i in index..@length - 1 do
      @data[i] = @data[i + 1]
    end
    p @data[@length - 1]
    @data.delete(@length - 1)
    @length -= 1
  end
end

my_array = MyArray.new;
my_array.push('hi');
my_array.push('you');
my_array.push('!');
my_array.pop();
my_array.delete_at_index(0);
my_array.push('are');
my_array.push('nice');
p my_array;
