# - ask user for name, first and last
# - break name into seperate lowercase words, add to array
# - write vowel method that moves vowel to next (be careful of edge cases, consider y)
# - writed method to take consonants and move them to next consonant.
# - switch first and last name (.reverse), and capitalize
# - push new name to array of code names
# - ask user if they want to add more code code names
# - print code names

puts "What name would you like to classify? (first last)"
name = gets.chomp
split_name = name.split(' ')

p split_name