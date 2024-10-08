def caesar_cipher (string, shift_factor)

  # array of downcase & upcase alphabets, to be used for encoding
  alphabets = [('a'..'z').to_a, ('A'..'Z').to_a]

  # COnverting string to array of letters
  string_a = string.split("")

  # encoding each letter
  string_a = string_a.map do |letter|
    alphabets.each do |array|
      if array.include? (letter)
        index = array.find_index(letter)
        index += shift_factor # encoding
        (index >= 26) ? index -= 26 : index
        letter = array[index]
        break
      end
    end
    letter
  end

  # Converting encoded array of lettes back to string
  string_a.join
end
