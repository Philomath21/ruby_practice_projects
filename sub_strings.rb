def substrings(word, dictionary)
  word = word.downcase

  # find all substrings of word
  # make sure your method can handle multiple words
  substr_list = []
  # for i in (0...word.length)
  word.length.times do |i|
    next unless word[i].match?(/[A-Za-z]/)
    (i...word.length).each do |j|
      # check if character at j is alphabet
      break unless word[j].match?(/[A-Za-z]/)
      substr_list.push(word[i..j])
    end
  end

  # for each substring
  substr_occ = {}
  for substr in dictionary
    # find no of its occurrances in dictionary
    # if found, add the substring and its count in new hash
    case substr_list.count(substr)
    when 0
      next
    else
      substr_occ[substr] = substr_list.count(substr)
    end
  end

  # return hash
  substr_occ
end

dict = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dict)
substrings("Howdy partner, sit down! How's it going?", dict)
