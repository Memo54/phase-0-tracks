# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + ":("
#   end
#   def self.yelling_happily(words)
#     words + "!!!" + "=D"
#   end
# end

# #DriverCode
# p Shout.yell_angrily("THESE PRETZEL'S ARE MAKING ME THIRSTY")
# p Shout.yelling_happily("Hey!!! How are you? I haven't seen you in a long time")

module Shout
  def yell_angrily(words)
    puts words + "!!!" + ":("
    end
  def yelling_happily(words)
   puts words + "!!!" + "=D"
    end
end

class New_Zealand_All_Blacks
  include Shout
end

class Chicago_Bears
  include Shout
end
#DriverCode
football = Chicago_Bears.new
football.yell_angrily("SERIOUSLY !!! HOW THE HELL ARE WE LOSING TO THE GREEN BAY PACKERS !!! WE DON'T EVEN HAVE JAY CUTLER ANYMORE ")

rugby = New_Zealand_All_Blacks.new
rugby.yelling_happily("LET'S GO KIWIS !!! BEAT THE WALLABIES ")
p football
p rugby