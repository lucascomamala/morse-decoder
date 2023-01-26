# frozen_string_literal: true

def decode_char(char)
  morse_hash = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }
  morse_hash[char]
end

def decode_word(string)
  word = ""
  arr = string.split(/ /)
  arr.each { |l|
    word += decode_char(l)
  }
  word
end

def decode_message(string)
  new_string = ""
  arr = string.split(/   /)
  arr.each { |w|
    new_string += decode_word(w)
    new_string += " "
  }
  new_string
end

puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
