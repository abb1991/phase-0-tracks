def calculator(integer_1, function, integer_2)
operator = function.to_sym

if operator == :+
  p integer_1 + integer_2
elsif operator == :-
 p integer_1 - integer_2
elsif operator == :*
  p integer_1 * integer_2
else operator == :/
  p integer_1 / integer_2
end
p operator
end

# calculator(10, "+", 2)

puts "Please type in a simple computation (+,-,*,/), for example 1+2:"
user_input = gets.chomp
user_array = user_input.split(" ")

p user_array
