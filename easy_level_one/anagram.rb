class Anagram
    def initialize(word)
        @word = word
        @sorted_word = word.downcase.split('').sort.join
    end
    
    def match(words)
       p words.select {|x| x.downcase.split('').sort.join == @sorted_word && x.downcase != @word.downcase}
    end
end

# Letter count
# Number of letter instances

      detector = Anagram.new('corn')
    anagrams = detector.match %w(corn dark Corn rank CORN cron park)