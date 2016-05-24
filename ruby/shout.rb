# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + ":("
#   end

#   def self.yell_happily(words)
#     words + "!!!" + ":)"
#   end
# end


# # driver code

# require_relative 'Shout'

# test_str = "I am feeling very emotional"

# p Shout.yell_happily(test_str)
# p Shout.yell_angrily(test_str)


module Shout
  def yell_angrily(words)
    words + "!!!" + ":("
  end

  def yell_happily(words)
    words + "!!!" + ":)"
  end
end

class High_fives
  include Shout
end

class Stubbing_toe
  include Shout
end

# driver

high_five = High_fives.new
stubbing_toe = Stubbing_toe.new


p high_five.yell_happily("High five")
p stubbing_toe.yell_angrily("Ouch")
