def calculator(function)
operator = function.to_sym

if operator == :+
  p 1 + 2
elsif operator == :-
 p 2 - 1
elsif operator == :*
  p 2 * 2
else operator == :/
  p 15 / 3
end
p operator
end

calculator("/")

# p operations = [:+, :-, :*, :/]

