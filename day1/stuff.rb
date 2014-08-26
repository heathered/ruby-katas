require "pry"

module StringCalc
  
  def self.add(string)
    if string.empty?
      0
    else
      x = s_to_i(string)
      if find_negs(x) == []
        x.select{ |i| i < 1000}.reduce(:+)
      else 
        raise "Negative numbers not allowed. #{find_negs(x).join(", ")} are invalid."
      end
    end
  end
  
  def self.s_to_i(string)
    string.split("\n").map{ |s| s.to_i }
  end
  
  def self.find_negs(string)
    string.select {|i| i < 0}
  end
  
end

# binding.pry