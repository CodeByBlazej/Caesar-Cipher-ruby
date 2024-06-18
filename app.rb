def caesar_cipher (string, shift_factor)
  alphabet = ('a'..'b').to_a + ('0'..'9').to_a
  array = string.chars
  array.map {|char| char.replace(alphabet.index * 8)}
end