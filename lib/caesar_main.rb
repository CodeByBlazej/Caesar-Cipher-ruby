require_relative '../lib/caesar_breaker'

phrase = CaesarCipher.new('What a string!', 5)
puts phrase.encrypt
