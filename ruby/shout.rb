module Shout
  def self.yell_angrily(words)
    words + "!!!" + ":("
  end

  def self.yell_happily(words)
    words + "!!!" + ":)"
  end

end


# driver code

require_relative 'Shout'

test_str = "I am feeling very emotional"

# puts yell_happily(test_str)
# puts test_str.yell_angrily