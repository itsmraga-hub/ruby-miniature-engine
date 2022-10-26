def decode_char(str)
  # Method to decode single Morse code character
  morse_code_dict = {
    '.-' => 'A',
    '-...' => 'B',
    '-.-.' => 'C',
    '-..' => 'D',
    '.' => 'E',
    '..-.' => 'F',
    '--.' => 'G',
    '....' => 'H',
    '..' => 'I',
    '.---' => 'J',
    '-.-' => 'K',
    '.-..' => 'L',
    '--' => 'M',
    '-.' => 'N',
    '---' => 'O',
    '.--.' => 'P',
    '--.-' => 'Q',
    '.-.' => 'R',
    '...' => 'S',
    '-' => 'T',
    '..-' => 'U',
    '...-' => 'V',
    '.--' => 'W',
    '-..-' => 'X',
    '-.--' => 'Y',
    '--..' => 'Z',
  }
  return morse_code_dict[str]
end

def decode_word(str)
  strArr = str.split
  output = ''
  strArr.each {
    |char| output += decode_char(char)
  }
  return output + " "
end

# decode_word("-- -.--")

def decode(str)
  wordsArr = str.split(/   /)
  finalOutput = ''
  wordsArr.each {
    |word| finalOutput += decode_word(word)
  }
  return finalOutput
end

# print decode("-- -.--   -. .- -- .")
print decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
