require_relative '../lib/caesar_breaker'

describe CaesarCipher do
  let(:string) { 'What a string!' }
  subject(:caesar) { described_class.new(string, 5) }

  describe '#make_array_of_string' do
    it 'makes an array with chars of string' do
      string = caesar.make_array_of_string('What a string!')
      array = ['W', 'h', 'a', 't', ' ', 'a', ' ', 's', 't', 'r',
               'i', 'n', 'g', '!']
      expect(string).to eq(array)
    end
  end

  describe '#make_alphabet' do
    it 'makes an array with alphabet letters' do
      alphabet = caesar.make_alphabet
      result = ('a'..'z').to_a
      expect(alphabet).to eq(result)
    end
  end

  describe '#make_array_of_string_indexes' do
    before do
      allow(caesar).to receive(:alphabet).and_return(('a'..'z').to_a)
      allow(caesar).to receive(:array).and_return(['W', 'h', 'a', 't', ' ', 'a', ' ', 's', 't', 'r',
                                                   'i', 'n', 'g', '!'])
    end

    it 'converts each letter in the string to its index and leaves others alone' do
      expected_array = [
        22, 7, 0, 19, ' ',
        0, ' ',
        18, 19, 17, 8, 13, 6,
        '!'
      ]

      result = caesar.make_array_of_string_indexes
      expect(result).to eq(expected_array)
    end
  end

  describe '#shift_array_of_string_indexes' do
    before do
      allow(caesar).to receive(:alphabet).and_return(('a'..'z').to_a)
      allow(caesar).to receive(:array_with_indexes).and_return([
                                                                 22, 7, 0, 19, ' ',
                                                                 0, ' ',
                                                                 18, 19, 17, 8, 13, 6,
                                                                 '!'
                                                               ])
    end

    it 'shifts each index by a given shift factor' do
      expected_array = [
        1, 12, 5, 24, ' ',
        5, ' ',
        23, 24, 22, 13, 18, 11,
        '!'
      ]

      result = caesar.shift_array_of_string_indexes
      expect(result).to eq(expected_array)
    end
  end

  describe '#make_ceasar_string_array' do
    xit 'turns array of numbers into array with Caesar string' do
      expected_array = [
        'b', 'm', 'f', 'y', ' ',
        'f', ' ',
        'x', 'y', 'w', 'n', 's', 'l',
        '!'
      ]

      result = caesar.make_ceasar_string_array
      expect(result).to eq(expected_array)
    end
  end

  describe '#turns_array_into_ceasar' do
    xit 'finish off the task and turns array into proper ceasar cipher' do
      expected_string = 'Bmfy f xywnsl!'

      result = caesar.turns_array_into_ceasar

      expect(result).to eq(expected_string)
    end
  end
end
