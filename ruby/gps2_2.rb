# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Get user input GETS.CHOMP
  # SPLIT user input into array
# output: pass array to block that creates a hash, with user input as key and item quantity as 0

# Method to add an item to a list
# input: item name and optional quantity
# steps: Same method as creating list, but with option to add quantity
# output: item and optional quantity pushed to existing hash

# Method to remove an item from the list
# input: hash index, and use DELETE method to remove item and quantity from hash
# steps: Ask user if they want to delete an item, print list of all items, user selects item GETS.CHOMP, and user input is passed to DELETE(USER INPUT) method.
# output: a revised list should be printed to user

# Method to update the quantity of an item
# input: user chooses index or item and quantity to add
# steps:ask user if they want to update the quantity of an item GETS.CHOMP(Y/N). Create new hash containing a copy of the key from the user's update selection, and a value of user input GETS.CHOMP.TO_I, then MERGE! the two hashes. The value from the new hash will replace the value from the old.
# output: updated hash with new item quantity.

# Method to print a list and make it look pretty
# input: no input
# steps:
# output:

#business logic

puts "Please enter each item in your shopping list, separated by a space (ex: milk eggs cookies):"
shopping_str = gets.chomp.downcase
shopping_arr = shopping_str.split(" ")
p shopping_arr

shopping_hash = {}

shopping_arr.each do |item|
  shopping_hash[item] = 0
end

# item = "juice"
# quantity = "5"

user_choice = 0

begin
  if user_choice[0] == "a"
  # add item/change item quantity
    puts "Please list item you wish to add/change. (ex: eggs)"
      item = gets.chomp
    puts "Please enter amount. (ex: 12)"
      quantity = gets.chomp.to_i
  shopping_hash.merge!(add_item_hash = {item => quantity})

  p shopping_hash

  # delete item
  elsif user_choice == "r"

  delete_item = "milk"
  shopping_hash.delete(delete_item)

  p shopping_hash
  else
  p shopping_hash
  end

#user interface

puts "Would you like to add, remove, or change the amount of any item on your list? ('add', 'remove', 'amount')"
user_choice = gets.chomp.downcase

end while "add remove amount".include?(user_choice)

p shopping_hash

#driver code

