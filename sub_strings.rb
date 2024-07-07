def substrings(word, dictionary)
  # return hash, listing each substring & no of occurances

  # find all substrings of word
  # make sure your method can handle multiple words
  substr_list = []
  for i in (0...word.length)
    for j in (i...word.length)
      substr_list.push(word[i..j])
    end
  end

  # for each substring
  substr_occ = {}
  for substr in substr_list
    # find no of its occurrances in dictionary
    # if found, add the substring and its count in new hash
    case dictionary.count(substr)
    when 0
      next
    else
      substr_occ[substr] = dictionary.count(substr)
    end
  end

  # return hash
  substr_occ
end

dict = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
word = "below"
substrings(word, dict)
