def caesar_cipher (string, shift_factor)
  alphabet = ('a'..'z').to_a
  # alphabet = /\w/
  array = string.chars
  # array_with_no_nums = /^(\d) (.*)$/
  string_alphabet_index = []

  array.each do |char|
    string_alphabet_index.push(alphabet.index(char))
  end


  shifted_array = string_alphabet_index.map {|idx| (idx + shift_factor) % alphabet.length}

    


  caesar_string = []

  shifted_array.each do |char|
    caesar_string.push(alphabet.at(char))
  end




  p string_alphabet_index
  p shifted_array
  p caesar_string.join('')
end



caesar_cipher('abcdefgzzz', 5)