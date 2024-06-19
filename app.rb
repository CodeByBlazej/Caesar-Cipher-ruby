def caesar_cipher (string, shift_factor)
  alphabet = ('a'..'z').to_a + ('0'..'9').to_a
  array = string.chars
  string_alphabet_index = []

  array.each do |char|
    string_alphabet_index.push(alphabet.index(char))
  end

  shifted_array = string_alphabet_index.map {|char| char + shift_factor}
  
  caesar_string = []

  shifted_array.each do |char|
    caesar_string.push(alphabet.at(char))
  end


  p string_alphabet_index
  p shifted_array
  p caesar_string.join('')
end

# make version where I store index of array in another array
# and then compare them to alphabet

caesar_cipher('kupka', 5)