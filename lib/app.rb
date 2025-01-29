require 'pry-byebug'
# rubocop: disable Metrics/AbcSize
def caesar_cipher(string, shift_factor)
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

  shifted_array = string_alphabet_index.map do |idx|
    idx.class == Integer ? (idx + shift_factor) % alphabet.length : idx
  end
  binding.pry

  caesar_string = []

  shifted_array.each do |char|
    if char.is_a? Integer
      caesar_string.push(alphabet.at(char))
    else
      caesar_string.push(char)
    end
  end

  array.each_with_index do |char, index|
    next unless /[A-Z]/.match?(char)

    caesar_string[index] = caesar_string[index].upcase

    # caesar_string[index] = char.upcase
    # caesar_string[index].upcase
    # caesar_string.map {|element| element[char] = element.upcase}
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
# rubocop: enable Metrics/AbcSize

caesar_cipher('What a string!', 5)
