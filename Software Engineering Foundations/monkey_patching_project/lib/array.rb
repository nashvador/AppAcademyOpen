# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    return nil if self.length == 0
    return self.max - self.min
  end

  def average
    return nil if self.length == 0
    return self.reduce(:+) / self.size.to_f
  end

  def median
    return nil if self.length == 0
    sorted = self.sort
    len = sorted.length
    value = (sorted[(len-1)/2.0] + sorted[len/2.0]) / 2.0
  end

  def counts
    new_hash = Hash.new(0)
    self.each do |letter|
        new_hash[letter] += 1
    end
    new_hash
  end


end
