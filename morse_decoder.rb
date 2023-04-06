HASH_TABLE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
  '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
  '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
  '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z', '.----' => '1',
  '..---' => '2', '...--' => '3', '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7',
  '---..' => '8', '----.' => '9', '-----' => '0'
}.freeze

def decode_char(char)
  HASH_TABLE[char]
end

# decode words
def decode_word(word)
  full_word = word.split
  full_word.map { |char| decode_char(char) }.join
end

# Decode a full sentence of words
def decode_sentence(sentence)
  full_sentence = sentence.split('  ')
  full_sentence.map { |word| decode_word(word) }.join(' ')
end

# print A
puts decode_char('.-')

# print MYCODE
puts decode_word('-- -.-- -.-. --- -.. .')

# print A BOX FULL OF RUBIES
puts decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
