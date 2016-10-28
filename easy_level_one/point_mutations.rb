class DNA
    def initialize(string)
        @string = string.chars
    end
    
    def hamming_distance(other_string)
        counter = 0
        count = 0
        other_string = other_string.chars
        while counter < other_string.size
        break if other_string[counter] == nil || @string[counter] == nil
          count += 1 if @string[counter] != other_string[counter]
          counter += 1
        end
        
        p count
    end
end

DNA.new('GGACTGA').hamming_distance('GGACTGA')