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
end

puts "Please type in a simple computation (+,-,*,/), for example 1+2:"
user_input = gets.chomp
user_array = user_input.split(" ")

num_1 = user_array[0].to_i
user_operator = user_array[1]
num_2 = user_array[2].to_i

calculator(num_1, user_operator, num_2)