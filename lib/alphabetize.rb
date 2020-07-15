ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
require 'pry'

def alphabetize(arr)
  arr.sort_by {|a| a.split("").map{ |b| ESPERANTO_ALPHABET.index(b) }}
  
  binding.pry
end