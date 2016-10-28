class Phrase
    def initialize(*words)
        @words = words.join(' ').downcase.scan(/\b[\w']+\b/)
        @hash = {}
    end
    
    def word_count
        return @hash if !@hash.empty?
        @words.each do |word|
          if @hash.has_key?(word)
              @hash[word] += 1
          else
              @hash[word] = 1
          end
        end
        
        @hash
    end
end
