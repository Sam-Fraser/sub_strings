dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#
def substrings(str, arr)
  #initalize a new hash (substring_count) with all values starting at zero
  substring_count = Hash.new 0

  #split string (str) on whitespace into an array of words and make them lowercase
  #save into new variable (str_arr)
  str_arr = str.downcase.split(" ")

  #iterate over str_arr checking if each word includes any of the words in dictionary array (arr)
  str_arr.each do |word|
    arr.each do |val|
      #if the word being checked in str_arr does include the current word being checked from arr, add 1 to count for word in substring_count
      if word.include? val
        substring_count[val] += 1
      end
    end
  end
  
  #print hash to console and return hash
  p substring_count

end

substrings("Howdy partner, sit down! How's it going?", dictionary)