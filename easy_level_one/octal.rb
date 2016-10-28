
require 'pry'
class Octal
    def initialize(num)
        @num = num.split('').map(&:to_i)
    end
    
    def to_decimal
      return 1 if @num == [1]
        value = 0
        exponent = @num.size - 1
        counter = 0
        while counter < @num.size
          value += @num[counter]*(8**exponent)
          #binding.pry
          counter += 1
          exponent -= 1
        end
      puts value
    end
end

thing = Octal.new('233')

thing.to_decimal