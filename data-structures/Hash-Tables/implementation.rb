class HashTable
  def initialize(size)
    @data = Array.new(size)
    @value = 0
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
    @data[@value] = Array.new(2)
    @data[@value][0] = key
    @data[@value][1] = value
    @value += 1
  end

  def get(key)
    @data.each do |data|
      if data[0] == key
        return data[1]
        break
      end
    end
  end
end

new_hash_table = HashTable.new(5)
p new_hash_table.set('banana', 500)
p new_hash_table.get('banana')
