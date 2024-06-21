def caesar_cipher (string, shift_factor)
  alphabet = ('a'..'z').to_a
  # alphabet = /\w/
  array = string.chars
  string_alphabet_index = []

  array.each do |char|
    string_alphabet_index.push(alphabet.index(char))
    # if regex then:
    # string_alphabet_index.push(alphabet.match(char))
  end

  if (string_alphabet_index.index)
  shifted_array = string_alphabet_index.map do |idx|
    i = 0
    until i >= shift_factor do
    idx +  

# shifted_array = []

#   string_alphabet_index.each do |char|
#     result = char + shift_factor
#     if (result <= alphabet.length)
#       shifted_array.push(result)
#     elsif (result > alphabet.length)
#       result
#       shifted_array.push()
#     end
#   end

#   string_alphabet_index.map do |char|
    


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

caesar_cipher('kuwopkazuuu', 5)