=begin
Fill the hash with vowels, where the value is the ordinal number of the letter in the alphabet (a - 1).
=end

abc = ('a'..'z')
vowels = {}

abc.each_with_index do |letter, index|
  vowels[letter] = index + 1 if ['a', 'e', "i", 'o', 'u'].include?(letter)
end

print vowels.to_s
