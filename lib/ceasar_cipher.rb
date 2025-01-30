class CeasarCipher
  attr_reader :string, :number, :array, :alphabet, :array_with_indexes

  def initialize(string, number)
    @string = string
    @number = number
    @array = array
    @alphabet = alphabet
    @array_with_indexes = []
  end

  def make_alphabet
    @alphabet = ('a'..'z').to_a
  end

  def make_array_of_string(string)
    @array = string.chars
  end

  def make_array_of_string_indexes(string)
    @array = string.chars

    @array.each do |char|
      if alphabet.include?(char.downcase)
        @array_with_indexes.push(alphabet.index(char.downcase))
      else
        @array_with_indexes.push(char)
      end
    end
  end
end
