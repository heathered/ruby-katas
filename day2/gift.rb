require 'pry'

module GiftEx
  # Just a sample list of members for your gift exchange. Feel free to change/ignore.
  #
  # Returns an Array of member names.
  def self.sample_members
    ["Sumeet Jain", "Beth Haubert", "Sachin Jain", "Suneel Jain", "Prisha Gupta", "Richa Goyal", "Arjun Goyal", "Judy Haubert"]
  end

  # Assign members to each other.
  #
  # members - Array containing member names.
  #
  # Examples
  #
  #   assign
  #   # => {"Sumeet Jain" => "Prisha Gupta", "Beth Haubert" => "Sachin Jain", "Sachin Jain" => "Richa Goyal", "Suneel Jain" => "Arjun Goyal", "Prisha Gupta" => "Beth Haubert", ...etc }
  #
  # Returns a Hash with each member's name as a key and the person to whom they
  # should give a gift as the value.
  # \s(\w+)$
  def self.assign
    givers_to_hash(good_pairs)
  end
  
  # Creates a 2D Array of members and shuffled members.
  # 
  # Returns 2D array of member pairs
  def self.zip_members
    sample_members.zip(sample_members.shuffle)
  end
  
  # Checks if zip_members 2D Array have pairs with the same last name.
  #
  # Returns Nil if same, Array if different.
  def self.check_zip(zip)
    
    zip.each do |x, y|
      if x.split.last == y.split.last
        break
      end
    end
  
  end
  
  # Loops until it finds an array where each set doesn't have the same last name
  # 
  # Returns an array
  def self.good_pairs
    
    x = check_zip(zip_members)
    
    until x.kind_of?(Array) do
      x = check_zip(zip_members)
    end
    
    x
    
  end 

  # Turns a 2D array of member pairs into a hash.
  def self.givers_to_hash(zip)
    Hash[zip]
  end
  
end


# binding.pry