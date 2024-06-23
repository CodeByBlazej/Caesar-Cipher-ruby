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

  # array.each_with_index do |char, index|
  #   if (char =~ /[A-Z]/) == 0
  #     caesar_string.at(index).replace(char.upcase)
  
  #   end
  # end




  p array
  p string_alphabet_index
  p shifted_array
  p caesar_string.join('')
end



caesar_cipher('aBBbbcdefgzzzbbb ! @ # 123', 15)