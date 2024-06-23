require 'pry-byebug'

def caesar_cipher (string, shift_factor)
  alphabet = ('a'..'z').to_a
  oryg_string = string.downcase.chars
  array = string.chars
  array_with_no_nums = /^(\d) (\s) (.*)$/
  string_alphabet_index = []


  array.each do |char|
    if alphabet.include?(char.downcase) ## try with || here for upcase
      string_alphabet_index.push(alphabet.index(char.downcase))
    else
      string_alphabet_index.push(char)
    end
  end

  binding.pry

  shifted_array = string_alphabet_index.map {|idx| idx != nil ? (idx + shift_factor) % alphabet.length : idx}

  # shifted_array = []




  caesar_string = []

  shifted_array.each do |char|
    caesar_string.push(alphabet.at(char))
  end



  p string_alphabet_index
  p shifted_array
  p caesar_string.join('')
end



caesar_cipher('aBBbcdefgzzz ! @ # 123', 15)