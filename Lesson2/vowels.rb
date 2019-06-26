=begin
Fill the hash with vowels, where the value is the ordinal number of the letter in the alphabet (a - 1).
=end

abc = ('a'..'z')
LETTERS = %w[a e i o u].freeze
vowels = {}

abc.each.with_index(1) do |letter, index|
  vowels[letter] = index if LETTERS.include?(letter)
end

p vowels.to_s
