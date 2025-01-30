require_relative '../lib/ceasar_cipher'

describe CeasarCipher do
  let(:string) { 'What a string!' }
  subject(:ceasar) { described_class.new(string, 5) }

  # describe '#make_array_of_string' do
  #   it 'makes an array with chars of string' do
  #     string = ceasar.make_array_of_string('What a string!')
  #     array = ['W', 'h', 'a', 't', ' ', 'a', ' ', 's', 't', 'r',
  #              'i', 'n', 'g', '!']
  #     expect(string).to eq(array)
  #   end
  # end

  describe '#make_alphabet' do
    it 'makes an array with alphabet letters' do
      alphabet = ceasar.make_alphabet
      result = ('a'..'z').to_a
      expect(alphabet).to eq(result)
    end
  end

  describe '#make_array_of_string_indexes' do

  before do
    allow(ceasar.alphabet).to receive(:include?)
    allow(ceasar.array_with_indexes).to receive(:push)
  end

    it 'makes an array with chars of string' do
      # string = 'What a string!'
      array = ['W', 'h', 'a', 't', ' ', 'a', ' ', 's', 't', 'r',
                   'i', 'n', 'g', '!']
      expect(ceasar.make_array_of_string_indexes(string)).to eq(array)
    end
    
    it 'turns every letter in array into index number' do
      array_with_indexes = ceasar.array_with_indexes
      array_of_string_indexes = ceasar.make_array_of_string_indexes(string)
      expect(array_of_string_indexes).to eq(array_with_indexes)
    end
  end
end
