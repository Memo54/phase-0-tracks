# game class

class TargetGame
  attr_reader :arrow_count
  attr_reader :is_over

  def initialize
    @target = ["bullseye", "second ring", "third ring"]
    @arrow_count = 0
    @is_over = false
  end

  def shuffle
    @target.shuffle!
  end

  def check_target(index)
    @arrow_count += 1
    if @target[index] == "bullseye"
      @is_over = true
    else
      false
    end
  end
end

# user interface

puts "Target Game!"
game = TargetGame.new

puts "Fire directly at bullseye..."
game.shuffle

while !game.is_over
  puts "You have 3 tries, press 1, 2, or 3 to shot the Arrow and to see where they land on the Target:"
  arrow = gets.chomp.to_i
  if !game.check_target(arrow - 1)
    puts "Nope! Try again."
  end
end

puts "You won in #{game.arrow_count} arrow shot attempt(s)!"