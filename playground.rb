# Sentence Array: 
# Write a method that adds each word of a sentence to an array. Then, capitalize every other word in the sentence. Return the new sentence. 
# Example: 
# "The quick brown fox jumps over the lazy dog." 
# ["The", "quick", "brown" …]
# => "The quick Brown fox Jumps over The lazy Dog."

# Extensions:
# - Use a sentence with other capital letters in it. The method should still capitalize every alternate word, regardless of other capitalization. 
# - Use a sentence with special characters, spaces, etc. Does your method still work? 
# - Refactor your solution to keep your main method under 5 lines. Use helper methods. 
# - Write a test suite to prove that your solution works. 

# sentence = 'The quick brown fox jumps over the lazy dog.'

# require 'pry'; binding.pry
# sentence.split(' ').map { |word| word.capitalize if sentence[word].index.is_even? }

# Example 1
# x = 10
# puts x
# puts y

# Example 2
# x = 10
# puts x
# puts y
# y = 20

# # Example 3
# x = 10
# def say_hello
#   puts "Hello World!"
# end
# puts x

# Example 4
# def print_variable
#   x = 4
#   p x
# end

# x = 2
# p x.inspect
# print_variable
# Example 5
# def print_variable
#   x = 4
# end

# x = 2
# print_variable
# puts x