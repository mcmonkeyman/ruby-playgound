require 'hangman_letter_check'


puts "==========="
puts "  HANGMAN  "
puts "==========="

# The number of tries the player gets.
num_tries = 10

# This array will hold the letters already guessed.
letters_guessed=[]

# First let's get the word to guess
puts "What's the word to guess?"
word_to_guess = gets.chomp

# This string will display the progress of the player
# Hidden letters will be replaced by"_".
word_progress = "_" * word_to_guess.length

# Main loop
begin
  # Let's show the player their progress and how many
    # tries they have left
    puts "Word progress so far: #{word_progress}"
    puts "#{num_tries} tries left."
    puts "Letters guessed so far: #{letters_guessed}"

    # Get their guess
    puts "Enter a letter:"
    letter = gets.chomp

    # Add the letter just guessed to the list of letters guessed.
    letters_guessed << letter

    if word_to_guess.include? letter
        # Congratulate them
        puts "Good guess!"

        # Update the word progress
        indexes = word_to_guess.occurrences(letter)

        indexes.each do |index|
        word_progress[index] = letter
        end
    else
        # Display a sad message
        puts "Bummer! The letter #{letter} isn't in the word."

        # Remove a try.
        num_tries = num_tries - 1
    end
end while num_tries > 0 and word_progress.include? '_'

puts "END OF THE GAME!"

# At the end of the game, display a sad message if they ran out of tries.
if num_tries == 0
    puts "Oh no! You ran out oftries :("
    puts "The word was #{word_to_guess}"
# Or display a happy message if they guessed the word.
else
    puts "Sweet! You guessed the word."
end
