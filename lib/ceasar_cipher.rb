class CeasarCipher
  attr_reader :string, :number, :array

  def initialize(string, number)
    @string = string
    @number = number
    # @array = array
  end

  def make_array_of_string(string)
    @array = string.chars
  end
end
