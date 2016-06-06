# # This program will accomplish:

#   - allow users to play a primative number-based game against the computer. The results of the matches will be stored so that the user has a running total of games won and the game results.

# # The game:

#   - each round either the computer (with a randomly assigned name) or the user will be randomly choosen to start first. The game begins with the number 21 (imagine 21 pencils on a table). The player may chose to remove 1, 2, or 3 from the total, e.g. the first player choses 3, and 18 remain. It is then the next player's turn to remove 1, 2, or 3. The object of the game is to be the person to reach 0.

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

require 'sqlite3'
require 'faker'

# create SQLite3 database

stick_game_db = SQLite3::Database.new("stick_game.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS win_loss(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    win_loss BOOLEAN
  )
SQL

stick_game_db.execute(create_table_cmd)

# game logic

def stick_game(stick_game_db)

rand_name = Faker::Name.name
count = 21

puts "Hi, I'm #{rand_name}. Let's play a simple game.\n We'll take turns subtracting 1,2, or 3 from 21.\n Whoever reaches zero first wins! \n\n"

  begin
    puts "How many would you like to take away? (1,2,3)"
    user_num = gets.chomp.to_i

    if user_num > 3
      puts "Please enter a valid number."
    elsif user_num < 1
      puts "Please enter a valid number."
    else
      count = count - user_num
      if count == 0
        game_results = true
        break
      end
      puts "remain: #{count}"
      computer_turn = count % 4
        if computer_turn == 0
          computer_turn = rand(1..3)
        end
      puts "#{rand_name}:#{computer_turn}"
      count = count - computer_turn
      if count == 0
        game_results = false
      end
      puts "remain: #{count}"
    end
  end until count <= 0

  if game_results == true
    puts "You win!"
  else
    puts "You lose."
  end

  # insert win_loss into table
  stick_game_db.execute("INSERT INTO win_loss (name, win_loss) VALUES ('#{rand_name}', '#{game_results}')")

end



# p stick_game(stick_game_db)


# user interface

puts "Welcome! Do you want to 'play' or check your past 'record'? (exit)"

user_choice = gets.chomp.downcase


  if user_choice == "play"
    stick_game(stick_game_db)
  elsif user_choice == "record"
    results = stick_game_db.execute("SELECT * FROM win_loss;")
    p results

    results.each do |arr|

      if arr[2] == true
        result = "win"
      else
        result = "loss"
      end

      puts "game: #{arr[0]}"
      puts "opponent: #{arr[1]}"
      puts "result: #{result} \n\n"
    end
  elsif user_choice == "exit"
    puts "goodbye!"
  else
    puts "Choose: play, record, exit"
    user_choice == gets.chomp.downcase
  end




