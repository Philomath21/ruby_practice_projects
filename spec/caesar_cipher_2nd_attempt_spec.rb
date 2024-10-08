require_relative '../lib/caesar_cipher_2nd_attempt'

describe '#caesar_cipher' do
  context 'when "a" is passed with shift factor 3' do
    it 'returns "d"' do
      string = 'a'
      shift_factor = 3
      expect(caesar_cipher(string, shift_factor)).to eql("d")
    end
  end

  context 'when "y" is passed with shift factor 3' do
    it 'returns "b"' do
      string = 'y'
      shift_factor = 3
      expect(caesar_cipher(string, shift_factor)).to eql("b")
    end
  end

  context 'when "jazz" is passed with shift factor 3' do
    it 'returns "b"' do
      string = 'jazz'
      shift_factor = 15
      expect(caesar_cipher(string, shift_factor)).to eql("ypoo")
    end
  end
end
