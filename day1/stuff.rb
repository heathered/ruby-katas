require "pry"

module StringCalc
  
  # Takes a string of positive numbers, separated by a new line.
  #
  # Returns the sum of positive numbers or raises an exception if there are negative numbers.
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
  
  # Takes a string of numbers
  # "1\n2\n3" => ["1", "2", "3"] => [1, 2, 3]
  # 
  # Returns an array of integers.
  def self.s_to_i(string)
    string.split("\n").map{ |s| s.to_i }
  end
  
  # Takes an array of integers.
  #
  # Returns an array of negative numbers or empty array if no negative numbers.
  def self.find_negs(string)
    string.select {|i| i < 0}
  end
  
end

binding.pry