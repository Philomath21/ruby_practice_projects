# Assignment:
# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your
# dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found
# in the original string and how many times it was found.
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (string, dict_a)

  # making string case insensitive
  string_s = string.downcase

  # hash to be returned, key = substring from dictionary, value = its count as substring in string
  return_hash = {}

  # checking & counting substrings, adding it to the hash
  dict_a.each do |substring|
    if string_s.include? substring
      count = string_s.scan(/(?=#{substring})/).count
      return_hash[substring] = count
    end
  end

  # returning the hash, substring => count in string
  return_hash
end
