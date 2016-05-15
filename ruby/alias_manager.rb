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
consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]

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

first_name_coded_vowels_consonants = first_name_coded_vowels.map do |letter|
  if consonants.include?(letter)
    consonants[(consonants.index(letter)+1)%21]
  else
    letter
  end
end

last_name_coded_vowels_consonants = last_name_coded_vowels.map do |letter|
  if consonants.include?(letter)
    consonants[(consonants.index(letter)+1)%21]
  else
    letter
  end
end

first_code_name = first_name_coded_vowels_consonants.join('').capitalize
last_code_name = last_name_coded_vowels_consonants.join('').capitalize

code_name = first_code_name + " " + last_code_name

puts code_name
