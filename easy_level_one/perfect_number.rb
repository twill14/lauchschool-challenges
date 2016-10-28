class PerfectNumber
    def self.classify(num)
        
        raise RuntimeError if num <= 0
        
        sum = (1...num).to_a.select {|x| num % x == 0}.reduce(:+)
    
        if sum == num 
          return p "perfect"
        elsif sum < num 
          return p "deficient"
        elsif sum > num 
          return p "abundant"
        end
    end
end

PerfectNumber.classify(13)