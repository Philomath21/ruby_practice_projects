def caesar_cipher (string, shift_by)

  # change string to unicode numbers array
  # "abc" => [97,98,99]
  string_copy = string.bytes

  # for each character unicode number in array,
  string_copy = string_copy.map do |num|

    # shift unicode number by shift_by
    # add condition for exceptions
    # [97,98,99] => [98,99,100]
    case num
    when 65..90
      num += shift_by
      num = num > 90 ? num - 26 : num
    when 97..122
      num += shift_by
      num = num > 122 ? num - 26 : num
    else
      num
    end

    # convert it back from unicode number to character
    # [98,99,100] => ["b", "c", "d"]
    num.chr
  end

  # convert array to string
  # ["b", "c", "d"] => "bcd"
  string_copy.join

end

caesar_cipher("abcz ABXZ", 1)
