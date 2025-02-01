class CaesarCipher
  attr_reader :string, :shift_factor, :array, :alphabet, :array_with_indexes, :shifted_array, :ceasar_string

  def initialize(string, shift_factor)
    @string = string
    @shift_factor = shift_factor
    @array = array
    @alphabet = alphabet
    @array_with_indexes = []
    @shifted_array = []
    @ceasar_string = []
  end

  def encrypt
    make_alphabet
    make_array_of_string(@string)
    make_array_of_string_indexes
    shift_array_of_string_indexes
    make_ceasar_string_array
    turns_array_into_ceasar
  end

  def make_alphabet
    @alphabet = ('a'..'z').to_a
  end

  def make_array_of_string(string)
    @array = string.chars
  end

  def make_array_of_string_indexes
    # make_alphabet
    # make_array_of_string(string)

    array.each do |char|
      if alphabet.include?(char.downcase)
        @array_with_indexes.push(alphabet.index(char.downcase))
      else
        @array_with_indexes.push(char)
      end
    end
    @array_with_indexes
  end

  def shift_array_of_string_indexes
    # make_alphabet
    # make_array_of_string_indexes(string)

    @array_with_indexes.each do |idx|
      @shifted_array << (idx.is_a?(Integer) ? (idx + @shift_factor) % alphabet.length : idx)
    end

    # @shifted_array
  end

  def make_ceasar_string_array
    # shift_array_of_string_indexes

    @shifted_array.each do |char|
      @ceasar_string << (char.is_a?(Integer) ? alphabet.at(char) : char)
    end

    # @ceasar_string
  end

  def turns_array_into_ceasar
    # make_ceasar_string_array

    @array.each_with_index do |char, index|
      next unless /[A-Z]/.match?(char)

      @ceasar_string[index] = @ceasar_string[index].upcase
    end

    @ceasar_string.join
  end
end
