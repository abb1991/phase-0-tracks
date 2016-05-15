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

# Driver code to test each operator in calculator method
# calculator(1, "+", 2)
# calculator(2, "-", 1)
# calculator(3, "*", 4)
# calculator(15, "/", 5)

begin
  puts "Please type in a simple computation (+,-,*,/), for example 1+2:"
  user_input = gets.chomp

  if user_input == "done"
    puts "here are your calculations:"
  else
    user_array = user_input.split(" ")

    num_1 = user_array[0].to_i
    user_operator = user_array[1]
    num_2 = user_array[2].to_i

    calculator(num_1, user_operator, num_2)
  end
end until user_input == "done"
