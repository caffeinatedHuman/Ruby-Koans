class DiceSet
    #   code ...
    @@instance_var
    def roll(number)
      count = 1
      array = []
      number.times do
        array << count
        count+=1
      end
      @@instance_var = array
    #   puts array
    end

    def value
        @@instance_var
    end
  end

g = DiceSet.new
g.roll(5)
puts g.value