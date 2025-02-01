require_relative '../lib/ceasar_cipher'

describe CeasarCipher do
  let(:string) { 'What a string!' }
  subject(:ceasar) { described_class.new(string, 5) }

  describe '#make_array_of_string' do
    it 'makes an array with chars of string' do
      string = ceasar.make_array_of_string('What a string!')
      array = ['W', 'h', 'a', 't', ' ', 'a', ' ', 's', 't', 'r',
               'i', 'n', 'g', '!']
      expect(string).to eq(array)
    end
  end

  describe '#make_alphabet' do
    it 'makes an array with alphabet letters' do
      alphabet = ceasar.make_alphabet
      result = ('a'..'z').to_a
      expect(alphabet).to eq(result)
    end
  end

  describe '#make_array_of_string_indexes' do
    it 'converts each letter in the string to its index and leaves others alone' do
      expected_array = [
        22, 7, 0, 19, ' ',
        0, ' ',
        18, 19, 17, 8, 13, 6,
        '!'
      ]

      result = ceasar.make_array_of_string_indexes(string)
      expect(result).to eq(expected_array)
    end
  end

  describe '#shift_array_of_string_indexes' do
    it 'shifts each index by a given shift factor' do
      expected_array = [
        1, 12, 5, 24, ' ',
        5, ' ',
        23, 24, 22, 13, 18, 11,
        '!'
      ]

      result = ceasar.shift_array_of_string_indexes
      expect(result).to eq(expected_array)
    end
  end
end
