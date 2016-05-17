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
# input: hash index, and use DELETE_AT method to remove item and quantity from hash
# steps: Ask user if they want to delete an item, print list of all items with associated idexes, user selects index GETS.CHOMP.TO_I, and user input is passed to DELETE_AT(USER INPUT) method.
# output: a revised list should be printed to user

# Method to update the quantity of an item
# input: user chooses index or item and quantity to add
# steps:ask user if they want to update the quantity of an item GETS.CHOMP(Y/N). Create new hash containing a copy of the key from the user's update selection, and a value of user input GETS.CHOMP.TO_I, then MERGE! the two hashes. The value from the new hash will replace the value from the old.
# output: updated hash with new item quantity.

# Method to print a list and make it look pretty
# input: no input
# steps:
# output:


puts "Please enter each item in your shopping list, separated by a space (milk eggs cookies):"
shopping_str = gets.chomp.downcase
shopping_arr = shopping_str.split(" ")
p shopping_arr


shopping_hash = {}
shopping_arr.each do |item|
  shopping_hash[item] = 0
end

def add_item(item, quantity)
add_item_hash = {item => quantity}
return add_item_hash
end

shopping_hash.merge!(add_item("milk", 1))

p shopping_hash