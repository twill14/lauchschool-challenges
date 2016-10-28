class SecretHandshake
    def initialize(num)
        @num = num.to_i
    end
    
    def commands
      result = []
      comparison = @num.to_s(2).chars.map(&:to_i)
      result << "wink" if comparison[-1] == 1
      result << "double blink" if comparison[-2] == 1
      result << "close your eyes" if comparison[-3] == 1 
      result << "jump" if comparison[-4] == 1 
      result = result.reverse if comparison.size == 5 && comparison[-5] == 1
      result
    end
end


handshake = SecretHandshake.new('piggies')

p handshake.commands