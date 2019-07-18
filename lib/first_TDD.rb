class Array
  def uniq
    uniq_arr = []

    self.each do |element|
      uniq_arr << element unless uniq_arr.include?(element)
    end
    uniq_arr
  end


  def two_sum
    pairs = []

    self.each_with_index do |el, idx|
      i = 1
      while idx + i < self.length
        if self[idx] + self[idx + i] == 0
          pairs << [idx, idx + i]
        end
        i += 1
      end
    end
    pairs
  end

  def my_transpose
    result = Array.new(self.length) { Array.new }

    self.each_with_index do |row, idx|
      row.each_with_index do |row_el, row_idx|
        result[row_idx] << row_el
      end
    end

    result
  end

  def stock_picker
    pairs = []

    self.each_with_index do |el, idx|
      i = 1
      p pairs
      while idx + i < self.length
        if  self[idx + i] > self[idx]
          pairs << self[idx + i] - self[idx]
        end
        i += 1
      end
    end
    
    pairs.keys[self.index(pairs.values.max)]
  end

end


