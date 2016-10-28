class Phrase
    def initialize(*words)
        @words = words.join(' ').downcase.scan(/\b[\w']+\b/)
        @hash = {}
    end
    
    def word_count
        @words.each do |word|
          if @hash.has_key?(word)
              @hash[word] += 1
          else
              @hash[word] = 1
          end
        end
        
        p @hash
    end
end

phrase = Phrase.new('one fish two Fish red fish blue fish')

phrase.word_count