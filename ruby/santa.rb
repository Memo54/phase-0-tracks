puts "SANTA GENERATOR!:\n\n"

class Santa

    attr_reader  :ethnicity , :celebrate_birthday, :get_mad_at,:home,:speak,:information,:eat_milk_and_cookies
    attr_accessor :age, :reindeer, :gender

  def initialize(gender, ethnicity)
      puts "Initializing Santa instance now..."
      @gender = gender
      @ethnicity = ethnicity
      @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
      @age = 0
  end

  def celebrate_birthday
      @age += 1
  end

  def get_mad_at(reindeer)
      @reindeer_ranking.push(reindeer)
      puts "WOW #{reindeer}, you been really bad today, I think you cant get a treat today!"
  end

  def speak
      puts  "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
      puts "That was a really good #{cookie} cookie!"
  end

  def home
      puts "This Santa's home is located in the North Pole"
  end

  def information
      puts "This Santa is  #{@age} years old and the Santa's ethnicity is #{@ethnicity} and the Santa's gender is #{@gender}"
  end

end

  def random_reindeer_list
    different_reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    new_reindeer = []
    while new_reindeer.length < different_reindeer.length
          random = rand(different_reindeer.length)
          if !new_reindeer.include?(different_reindeer[random])
          new_reindeer << different_reindeer[random]
    end
  end
  return new_reindeer
end

#Random Gender Selector from a given set
  def random_gender
      genders = ["Male", "Female", "Bigender","Agender",  "Not Provided", " Transgender Male", "Transgender female", "Non-Binary"]
      gender = genders[rand(genders.length)]
  end

# Random Ethnicity selector from a given set
  def random_ethnicity
      ethnicity_arr = ["Latino", "Black" "White", "Asian","African", "European", "Prefered Not To Say It", "Oceania","Alien","Cartoon", "5th Demensional Being"]
      ethnicity = ethnicity_arr[rand(ethnicity_arr.length)]
  end


#Drivercode

puts " Click enter to start a new Santa:"
enter = gets.chomp

#created a while look which would let the user continue making santas after the 200 mark is reached or they can type quit to stop.
santas = []

#created a loop that would make 100 santas with all of the different information listed about them

while true
  100.times do |number|
  new_santa = Santa.new(random_gender, random_ethnicity)
  new_santa.age = rand(140)
  new_santa.reindeer = random_reindeer_list
  puts "#{new_santa.speak}"
  puts "#{new_santa.eat_milk_and_cookies("Chocolate Chip")}"
  puts "#{new_santa.eat_milk_and_cookies("Peanut Butter and Oatmeal")}"
  puts "This Santa ##{number+1}'s is good to go tonight due to the qualities listed below:\n\n"
  puts "\n#{new_santa.home}"
  puts "##{number+1}'s Santa's Age: #{new_santa.age}"
  puts "##{number+1}'s Santa's Gender: #{new_santa.gender}"
  puts "##{number+1}'s Santa's Ethnicity: #{new_santa.ethnicity}"
  puts "#{new_santa.get_mad_at("Nixon")}"

  puts "\n\n\n*Important Information or summary of this Santa is:"
  puts "#{new_santa.information}"
  end
puts " \n\n To continue making more Santas press enter or type Quit to stop."
type = gets.chomp
      if type == "quit"

      puts " \n\nMERRRY CHRISTMAS!"
  break
  end
end