class Trinary
    NUMBER = 3
    def initialize(num)
        @num = num
    end
    
    def to_decimal
      return 1 if @num == [1]
      return 0 if invalid_trinary?(@num.to_s)
        @num = @num.split('').map(&:to_i)
        value = 0
        exponent = @num.size - 1
        counter = 0
        while counter < @num.size
          value += @num[counter]*(NUMBER**exponent)
          counter += 1
          exponent -= 1
        end
      value
    end
    
    private
    
    def invalid_trinary?(num)
        num.match(/[^0-2]/)
    end
end
