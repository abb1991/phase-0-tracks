# # This program will accomplish:

#   - allow users to play a primative number-based game against the computer. The results of the matches will be stored so that the user has a running total of games won and the game results.

# # The game:

#   - each round either the computer (with a randomly assigned name) or the user will be randomly choosen to start first. The game begins with the number 21 (imagine 21 pencils on a table). The player may chose to remove 1,2, or 3 from the total, e.g. the first player choses 3, and 18 remain. It is then the next player's turn to remove 1,2, or 3. The object of the game is to be the person to reach 0.

# # Pseudocode

#   - Create a database of the win/loss results:
#     - db = SQLite3::Database.new("stick_game.db")


#   - Create a new game:
#     - Define a method, stick_game, with no user input. WHILE variable count is greater than 0, the game sequence will run.
#         -If it is the user's turn, ask them if they would like to subtract 1,2, or 3 from the total (user_input = gets.chomp.to_i). Subtract user_input from count, if new_total > 0 it is the computer's turn, which will subtract either 1,2, or 3 so that new_total % 4 = 0 (this is the crux of how to play the game to win).
#         - Once a game is over, store the Boolean value of win (true) or loss (false) in the variable game_results. Take this value and add it to the database, stick_game.db, with the other values (computer_name, win_loss)
#           - def game_results(db, computer_name, win_loss)
#             db.execute("INSERT INTO game_results (computer_name, win_loss) VALUES (?, ?)", [computer_name, win_loss])
#             end

# require gems

# require 'sqlite3'
require 'faker'

# game logic

def stick_game

count = 21

  begin
    puts "How many would you like to take away? (1,2,3)"
    user_num = gets.chomp.to_i

    if user_num > 3
      puts "Please enter a valid number."
    elsif user_num < 1
      puts "Please enter a valid number."
    else
      count = count - user_num
      p count
      puts "Here is the computer's move:"
      p computer_turn = count % 4
        if computer_turn == 0
          computer_turn = rand(1..3)
        end
      p computer_turn
      count = count - computer_turn
      p count
    end
  end until count <= 0

end

p stick_game


# user interface



