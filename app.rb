require 'pry-byebug'

def caesar_cipher (string, shift_factor)
  alphabet = ('a'..'z').to_a
  array = string.chars
  string_alphabet_index = []


  array.each do |char|
    if alphabet.include?(char.downcase)
      string_alphabet_index.push(alphabet.index(char.downcase))
    else
      string_alphabet_index.push(char)
    end
  end

  
  shifted_array = string_alphabet_index.map {|idx| idx.class == Integer ? (idx + shift_factor) % alphabet.length : idx}
  
    
  caesar_string = []
  
  shifted_array.each do |char|
    if char.is_a? Integer
      caesar_string.push(alphabet.at(char))
    else
      caesar_string.push(char) 
    end
  end
  
  binding.pry

  array.each_with_index do |char, index|
    if char =~ /[A-Z]/
      caesar_string[index] = caesar_string[index].upcase

      # caesar_string[index] = char.upcase
      # caesar_string[index].upcase
      # caesar_string.map {|element| element[char] = element.upcase}
  
    end
  end

  # caesar_string.each_with_index do |char, index|
  #   array.each do |element|
  #     if (element =~ /[A-Z]/) == 0
  #       char[index] = char.upcase
  #     else
  #       char
  #     end
  #   end
  # end





  p array
  p string_alphabet_index
  p shifted_array
  p caesar_string
  p string
  p caesar_string.join('')
end



caesar_cipher("What a string!", 5)