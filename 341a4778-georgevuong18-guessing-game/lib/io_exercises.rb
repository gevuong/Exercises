# I/O Exercises
# * Write a `guessing_game` method. The computer should choose a number between
#   1 and 100. Prompt the user to `guess a number`. Each time through a play loop,
#   get a guess from the user. Print the number guessed and whether it was `too
#   high` or `too low`. Track the number of guesses the player takes. When the
#   player guesses the number, print out what the number was and how many guesses
#   the player needed.
# * Write a program that prompts the user for a file name, reads that file,
#   shuffles the lines, and saves it to the file "{input_name}-shuffled.txt". You
#   could create a random number using the Random class, or you could use the
#   `shuffle` method in array.

  def guessing_game
    answer = rand(1..100)
    counter = 0
    user_input = 0

    while user_input != answer
      puts "Guess a number between 1 and 100"
      puts user_input = gets.chomp.to_i
      if user_input < answer
        counter += 1
        puts "too low"
      elsif user_input > answer
        counter += 1
        puts "too high"
      else
        counter += 1
        puts "You are right! It took #{counter} guesses"
      end
    end
  end
