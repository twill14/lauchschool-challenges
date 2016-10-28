class Scrabble
 SCRABBLE_HASH =  {'A' => 1, 'E' => 1, 'I' => 1, 'O' => 1, 'U' => 1, 'L' => 1, 'N' => 1, 'R' => 1, 'S' => 1, 'T' => 1,
    'D' => 2, 'G' => 2, 'B' => 3, 'C' => 3, 'M' => 3, 'P' => 3, 'F' => 4, 'H' => 4 , 'V' => 4, 'W' => 4, 'Y' => 4,
    'K' => 5, 'J' => 8, 'X' => 8, 'Q' => 10, 'Z' => 10       
}
    def initialize(set)
        @set = set
        return 0 if set == nil
        @set = @set.gsub("\n",'').gsub("\t",'').split('')
    end
    
    def score
        score = 0
      return score if @set == nil || @set == [" "] 
      @set.map(&:upcase).each do |element|
          score += SCRABBLE_HASH[element]
      end
      
      score
    end
    
    def self.score(set)
      set = set.split('')
      score = 0
      return score if set == nil || set == [" "]
      set.map(&:upcase).each do |element|
          score += SCRABBLE_HASH[element]
      end
      
      score
    end
end
