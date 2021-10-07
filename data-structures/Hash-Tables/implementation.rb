class HashTable
  def initialize(size)
    @data = Array.new(size)
    # @data = []
  end

  def hash(key)
    hash = 0
    i = 0
    while i < key.length do
      hash = (hash + key[i].ord * i) % @data.length
      i += 1
    end
    return hash
  end

  def set(key, value)
    address = self.hash(key)
    if(!@data[address])
      @data[address] = []
    end
    @data[address] << ([key,value])
    return @data
  end

  def get(key)
    address = self.hash(key)
    current_bucket = @data[address]
    i = 0
    if(current_bucket)
      while i < current_bucket.length
        if(current_bucket[i][0] == key)
          return current_bucket[i][1]
        end
        i += 1
      end
    end
    return nil
  end
end

new_hash_table = HashTable.new(50)
new_hash_table.set('grapes', 10000)
p new_hash_table.get('grapes')
new_hash_table.set('apples', 9)
p new_hash_table.get('apples')



