puts "What is your name?"
name = gets.chomp.downcase

case name
when name == "drake cula"
  name = true
when name == "tu fang"
  name = true
else
  name = false
end

puts "How old are you? What year were you born?"
age = gets.chomp.to_i

if (18...80) === age
  age = true
else
  age = false
end

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic_bread = gets.chomp

if garlic_bread == "yes"
  garlic_bread = true
else
  garlic_bread = false
end

puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp

if insurance == "yes"
  insurance = true
else
  insurance = false
end

case
when name = true
  puts "Definitely a vampire."
when !age && !garlic_bread && !insurance
  puts "Almost certainly a vampire."
when !age && !(garlic_bread || insurance)
  puts "Probably a vampire."
when age && (garlic_bread || insurance)
  puts "Probably not a vampire."
else
  puts "Results inconclusive."
end

puts name, age, garlic_bread, insurance

