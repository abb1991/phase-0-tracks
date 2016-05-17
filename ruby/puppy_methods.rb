class Puppy

  def initialize
    p "initializing new Puppy instance... "
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy

  end

  def speak(i)
    p "Woof!" * i
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(i)
    p "I'm #{i * 7} years old! - dog"
  end

  def file_taxes(date_filed)
    p "I filed your taxes on #{date_filed}!"
  end

end

scruffy = Puppy.new
scruffy.fetch("ball")
scruffy.speak(10)
scruffy.roll_over
scruffy.dog_years(3)
scruffy.file_taxes("April 15th")


class Sitcoms

  def initialize
    p "initializing sitcom..... (laugh track)"
  end

  def seinfeld(thought)
    p "#{thought} ....and yada yada yada."
  end

  def frasier(name)
    p "(in a baritone) Thank you #{name} for calling in, I'm         listening..."
  end

end

viewer = Sitcoms.new
viewer.seinfeld("I became a coder")
viewer.frasier("Sierra")

arr = []

50.times do |i|
  i = Sitcoms.new
  arr.push(i)
end

arr.each do |i|
  i.seinfeld("test")
  puts "\n"
  i.frasier("Randolph")
  puts "\n"
end




p arr
