# require File.expand_path(File.dirname(__FILE__) + '/neo')

# Greed is a dice game where you roll up to five dice to accumulate
# points.  The following "score" function will be used to calculate the
# score of a single roll of the dice.
#
# A greed roll is scored as follows:
#
# * A set of three ones is 1000 points
#
# * A set of three numbers (other than ones) is worth 100 times the
#   number. (e.g. three fives is 500 points).
#
# * A one (that is not part of a set of three) is worth 100 points.
#
# * A five (that is not part of a set of three) is worth 50 points.
#
# * Everything else is worth 0 points.
#
#
# Examples:
#
# score([1,1,1,5,1]) => 1150 points
# score([2,3,4,6,2]) => 0 points
# score([3,4,5,3,3]) => 350 points
# score([1,5,1,2,4]) => 250 points
#
# More scoring examples are given in the tests below:
#
# Your goal is to write the score method.

def score(dice)
    # You need to write this method
    # puts dice.is_a?(Array)
    # puts dice
    # puts "Array empty? #{dice.empty?}"
    total = 0
    if dice.empty?
        total = 0
    else
        dice_hash = Hash.new(0)
        dice.each do |element|
            dice_hash[element] += 1
        end
        # puts dice_hash
        dice_hash.each do |key, value|
            if value < 3
                if key == 1 
                    value.times{
                        total = total + 100
                    }
                elsif key == 5
                    value.times{
                        total = total + 50
                    }
                end
            elsif value >= 3
                if key==1
                    count = value
                    while count > 3
                        total = total + 100
                        count = count -1
                    end
                    total = total+1000
                else
                    if key==5
                        count = value
                        while count > 3
                            total = total + 50
                            count = count - 1
                        end
                        total = total + (key*100)
                    else
                        total = total + (key*100)
                    end
                end
            end
        end
    end
    puts "Total:#{total}"
    puts "---x---x---"
    return total
end

score([])
score([5])
score([1])
score([1,5,5,1])
score([2,3,4,6])
score([1,1,1])
score([2,2,2])
score([3,3,3])
score([4,4,4])
score([5,5,5])
score([6,6,6])
score([2,5,2,2,3])
    score([5,5,5,5])
     score([1,1,1,1])
score([1,1,1,5,1])
score([1,1,1,1,1])
