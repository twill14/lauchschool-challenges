# - Access odd and even words by index
# - Even words read as orignal
# - Odd words are to be reversed


def oddword(string)
    array = []
    string.scan(/\b[\w']+\b/).each_with_index do |ele, inx|
        if inx % 2 != 0
            array << ele.reverse
        else
            array << ele
        end
    end
    
    p array.join(" ") + "."
end

oddword("    .")