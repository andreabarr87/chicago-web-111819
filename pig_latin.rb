# Methods

def latinize_word(word)
  # If the word starts with at least one consonant,
  if word.match(/\A[^aeiou]/i)
    # Isolate beginning consonant(s) from all later chars ... "Plant" => "Pl" and "ant"
    # Use regex to capture both groups of chars ... 1) "Pl" 2) "ant"
    # Flip the positions of the groups & put an "ay" on the end ... "ant" + "Pl" + "ay"
    return word.gsub(/(\A[^aeiou]+)(.*)/i, '\2\1ay')
  end
  # Otherwise (when the word starts with a vowel),
    # Return the original word plus an "ay" on the end. ... "owl" => "owlay"
  word + "ay"
end

def clear_screen
  puts "\e[H\e[2J"
end

# Runner code

exiting = false
clear_screen

puts "Welcome to the pig-latinizer!"

while !exiting
  puts "Enter a word you want pig-latinized!"

  input = gets.chomp

  puts "Thanks! Calculating...."

  # Make it feel like we're TRYING SUPER HARD AT THIS
  sleep 0.7

  puts "Done! The pig latin way to say that is:"

  puts "🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷"
  puts latinize_word(input)
  puts "🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷🐷"

  puts "Again? y/n"

  exiting = gets.chomp.downcase == "n"
end

puts "Thanks for using the Pig-Latinizer!"
