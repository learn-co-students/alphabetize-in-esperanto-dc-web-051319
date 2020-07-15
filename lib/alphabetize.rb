require 'pry'

def alphabetize(arr)
e_alphabet = ""
e_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
hash_alphabet = {}
array_final = []

e_alphabet.split("").each_with_index do |letter, idx |
    hash_alphabet[letter] = {
      :idx => []
    }
  end

arr.each do |word |
    first_letter = ""
  first_letter = word[0]
hash_alphabet[first_letter][:idx] = hash_alphabet[first_letter][:idx].push(word)
hash_alphabet[first_letter][:idx] = hash_alphabet[first_letter][:idx].sort
end

hash_alphabet.each do |k, data |
    data.each do |idx, str |
      array_final = array_final.push(str)

    end
  end
array_final = array_final.delete_if {
  | x | x == []
}

array_final = array_final.flatten
binding.pry
return array_final
end
  