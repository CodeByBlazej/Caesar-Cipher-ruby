require_relative '../lib/ceasar_cipher'

describe CeasarCipher do
  subject(:ceasar) { described_class.new('What a string!', 5) }

  describe '#make_array_of_string' do
    it 'makes an array with chars of string' do
      expect(ceasar.make_array_of_string('What a string!')).to eq(['W', 'h', 'a', 't', ' ', 'a', ' ', 's', 't', 'r',
                                                                   'i', 'n', 'g', '!'])
    end
  end
end
