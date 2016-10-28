class Series
    def initialize(series)
        @series = series
        @array = series.split('').map(&:to_i)
    end
    
    def slices(num)
        raise ArgumentError, 'num is too big for the string.' if num > @array.size
        result = []
        counter = 0
        last_index = num - 1
        while counter < @array.size - last_index
          previous = counter
          step = (num - 1) + counter
          result << @array[previous..step]
          counter += 1
        end
        
        p result
    end
end

thing = Series.new('01234')

thing.slices(2)

thing.slices(3)

thing.slices(4)