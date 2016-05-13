#"Hello,thanks for choosing 'Interior Decliners' for your home
# decoration needs. Here everything is too good for you!"
#"Please tell us a little bit about you and your perfectly adequate, but # not-quite-good-enough for our services family:"
# Ask for client's name, age, proposed theme, fears, children
# "Thanks for the info, I'll see if I there's anything we can do to meet your needs"
# "Could you check and make sure these are really the answers you want to give? (y/n)"
#   - if yes "Oh thank you! I was worried for a minute. Why don't you re-enter your info."
#   - once entered "That'll have to do I suppose..."
# -print info "After reviewing your information, we here at 'Interior Decliners' are unable to move forward. I can't believe you thought #{theme} was a good idea. Ta ta!"

puts "Hello,thanks for choosing 'Interior Decliners' for your home decoration needs. Here everything is too good for you!"
puts "Please tell us a little bit about you and your perfectly adequate, but not-quite-good-enough for our services family:"

user_info = {
  name: "none",
  age: 0,
  theme: "none",
  fear: "none",
  children: false,
}

puts "Name:"
user_info[:name] = gets.chomp

puts "Age:"
user_info[:age] = gets.chomp.to_i

puts "Theme:"
user_info[:theme] = gets.chomp

puts "Greatest fear:"
user_info[:fear] = gets.chomp



p user_info