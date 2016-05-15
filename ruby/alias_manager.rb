# - ask user for name, first and last
# - break name into seperate lowercase words, add to array
# - write vowel method that moves vowel to next (be careful of edge cases, consider y)
# - writed method to take consonants and move them to next consonant.
# - switch first and last name (.reverse), and capitalize
# - push new name to array of code names
# - ask user if they want to add more code code names
# - print code names

puts "What name would you like to classify? (first last)"
name = gets.chomp.downcase
split_name = name.split(' ').reverse

first_name_letters = split_name[0].split('')
last_name_letters = split_name[1].split('')

vowels = ["a","e","i","o","u"]

first_name_coded_vowels = first_name_letters.map do |letter|
  if vowels.include?(letter)
    vowels[(vowels.index(letter)+1)%5]
  else
    letter
  end
end

last_name_coded_vowels = last_name_letters.map do |letter|
  if vowels.include?(letter)
    vowels[(vowels.index(letter)+1)%5]
  else
    letter
  end
end


p first_name_letters
p first_name_coded_vowels
p last_name_letters
p last_name_coded_vowels