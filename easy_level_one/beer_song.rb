class BeerSong
    def verse(num1, num2 = num1)
        while num1 >= num2
         if num1 == 0
             puts "No bottles of beer on the wall, no more bottles of beer. \n"
             puts  "Go to the store and buy some more, 99 bottles of beer on the wall."
             break
         end
             bottles = "bottles"
             bottles = "bottle" if num1 == 1
          puts "#{num1} #{bottles} of beer on the wall, #{num1} #{bottles} of beer.\n" 
              num1 -= 1
             bottles = "bottle" if num1 == 1
             bottles = "bottles" if num1 == 0
          puts "Take one down and pass it around, #{num1} #{bottles} of beer on the wall.\n"
        end
    end
end