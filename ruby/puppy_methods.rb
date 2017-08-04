class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
      toy
  end

  def speak(repeat)
    index = 0
    while index < repeat
      puts "woof"
      index += 1
    end
  end

  def roll_over
    puts "roll over"
  end

  def dog_years(human_years)
    (human_years)* 7
  end

  def play_dead
    puts "lies down and rolls on back"
  end

  def initialize
    puts "initialize new puppy instance..."
  end

end

#Drivercode
buddy = Puppy.new
buddy.speak(4)
buddy.roll_over
buddy.dog_years(10)
buddy.play_dead
buddy.fetch("ball")



class Developer

  def pseudocode
    puts "comments and brainstorms code"
  end

  def code
    puts "Writes and designs program"
  end

  def initialize
    puts "initialize programer instance"
  end
end

dbc = []

    index = 0
    while index < 50
    student = Developer.new
    dbc.push(student)
    index += 1
    end

dbc.each do |programer|
programer.pseudocode
programer.code
end