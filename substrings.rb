def substrings(text, dictionary)
    output_hash = Hash.new(0)
    lowercase_text = text.downcase()
    dictionary.each { |word|
        matches = lowercase_text.scan(word).length
        next if matches == 0 
        output_hash[word] = matches
    }
    return output_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("below", dictionary)
#   => { "below" => 1, "low" => 1 }

p substrings("Howdy partner, sit down! How's it going?", dictionary)
#   => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
