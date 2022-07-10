string = ("Welcome to Turing 2207")
array = string.split('')
array.each do |character|
    if character.ord >= 97 && character.ord <= 122
         character = (character.ord - 36).chr
    end
require "pry"; binding.pry
string.split