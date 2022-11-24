#greeting the user
puts "Welcome to the price is right!! "
puts ''
#set a price to guess
price1 = rand(1..10)
price2 = rand(1..10)
price3 = rand(1..10)
h = {'chair' => price1, 'shoe' => price2, 'car' => price3}

puts "don't cheat, but here are the answers: #{h}"
puts ''
puts "Please choose between the following: #{h.key(price1)}, #{h.key(price2)}, or #{h.key(price3)}"
chosen_item = gets.chomp
if h.key?(chosen_item) == true
  price_to_guess = h[chosen_item]
  #initialize user guess
  user_guess = 0
  #init counter
  counter = 0
  while user_guess != price_to_guess && counter <5
    counter += 1
    puts "Guess a price between 1 and 10"
    print '> '
    user_guess = gets.chomp.to_i
    if (user_guess == price_to_guess-1 || user_guess == price_to_guess+1)
        puts "you're getting close"
    end
  end
  if user_guess == price_to_guess
    puts "Congrats, you guessed correctly! The price of the #{h.key(price_to_guess)} is $#{price_to_guess} and It took you #{counter} tries." 
  else
    puts "You've guessed #{counter} times, which is too many and you are out of guesses"
  end
else
  puts "It seems you are unhappy with the items we are sharing with you."
end