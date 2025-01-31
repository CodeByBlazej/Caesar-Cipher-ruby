class CeasarCipher
  attr_reader :string, :shift_factor, :array, :alphabet, :array_with_indexes

  def initialize(string, shift_factor)
    @string = string
    @shift_factor = shift_factor
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
    make_alphabet
    make_array_of_string(string)

    @array.each do |char|
      if alphabet.include?(char.downcase)
        @array_with_indexes.push(alphabet.index(char.downcase))
      else
        @array_with_indexes.push(char)
      end
    end
    @array_with_indexes
  end

  def shift_array_of_string_indexes
    make_alphabet
    make_array_of_string_indexes(string)

    @array_with_indexes.map do |idx|
      idx.is_a?(Integer) ? (idx + @shift_factor) % alphabet.length : idx
    end
  end
end
