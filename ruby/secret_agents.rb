puts "Secret Agent, do you want to encrypt (e) or decrypt (d) your password?"
user_choice = gets.chomp
puts "Please enter your encrypted/decrypted password"
user_password = gets.chomp

def encrypt(password)
    i = 0

  while i < password.length
      alpha = "abcdefghijklmnopqrstuvwxyz"
      var = password[i]
      num = alpha.index(var)
      num2 = num + 1
      num3 = num2%26
      puts alpha[num3]
    i += 1
  end
end

def decrypt(password)
    i = 0
  while i < password.length
      alpha = "abcdefghijklmnopqrstuvwxyz"
      var = password[i]
      num = alpha.index(var)
      num2 = num - 1
      puts alpha[num2]
    i += 1
  end
end

  if user_choice == "d"
    puts decrypt(user_password)

    elsif user_choice == "e"
    puts encrypt(user_password)

    else
   puts "you did not enter e or d, please try again"
  end
