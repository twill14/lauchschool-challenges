class Sieve
    def initialize(num)
        @range = (2..num).to_a
    end
    
    def is_prime?(n)
      for d in 2..(n - 1)
       if (n % d) == 0
        return false
       end
      end
    end
    
    def primes
       p @range.select {|x| is_prime?(x)} 
    end
end

thing = Sieve.new(1000)

thing.primes