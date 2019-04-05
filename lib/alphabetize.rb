require 'pry'

ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
    guide = ESPERANTO_ALPHABET.chars
    arr.sort do |string_a, string_b|
        string_a.split("").map{|c| guide.index(c)} <=> string_b.split("").map{|c| guide.index(c)}
    end
end
