def calculator(integer_1, function, integer_2)
operator = function.to_sym
    if operator == :+
      p result = integer_1 + integer_2
    elsif operator == :-
      p result = integer_1 - integer_2
    elsif operator == :*
      p result = integer_1 * integer_2
    else operator == :/
      p result = integer_1 / integer_2
    end
end

# Driver code to test each operator in calculator method
# calculator(1, "+", 2)
# calculator(2, "-", 1)
# calculator(3, "*", 4)
# calculator(15, "/", 5)

all_user_input = []
all_calculations = []
i = 0

begin
  puts "Please type in a simple computation (+,-,*,/), for example 1+2:"
  user_input = gets.chomp
  all_user_input.push(user_input)

  if user_input == "done"
    puts "here are your calculations:"
  else
    user_array = user_input.split(" ")

    num_1 = user_array[0].to_i
    user_operator = user_array[1]
    num_2 = user_array[2].to_i

    calculation = calculator(num_1, user_operator, num_2)
    all_calculations.push(calculation)
  end
  i += 1
end until user_input == "done"

all_calculations << "and done"
#this is to even out the number of elements in each array so that they iterate in the correct sequence.

while i > 1
  puts "#{all_user_input[-i]} = #{all_calculations[-i]}"
  i -= 1
end
