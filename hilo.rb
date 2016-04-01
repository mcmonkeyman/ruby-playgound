# Computer needs to generate a secret number
secret_number = rand(10) + 1

# Game loop
begin

# Tell the user to guess a number between 1 and 10
puts "Please guess a number!"

# User guesses a number
user_number = gets.chomp.to_i

# If the guess was higher than the secret number print "Too high!"
if secret_number < user_number
    puts "Too high!"
end

# If the guess was lower than the secret number print "Too low!"
if secret_number > user_number
    puts "Too low!"
end

end while secret_number!=user_number

# The guess was equal to the secret number so print "Congratulations!"
puts "Congratulations"

