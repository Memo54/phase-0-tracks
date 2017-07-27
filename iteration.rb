def apology
  puts "I'm sorry!"
  yield("Bill", "Ted")
end

apology { |name1, name2| puts "I'm super super sorry #{name1} and #{name2}!" }
#

ice_cream_flavor = ["chocolate", "vanilla", "strawberry", "mint"]

puts "Ice Cream Flavor"
p ice_cream_flavor

condiments = {"sprinkles" => "on top", "walnuts" => "mix in", "gummy bears" => "on the bottom"}

puts "Condiments"
p condiments

#

ice_cream_flavor = ["chocolate", "vanilla", "strawberry", "mint"]

puts "Ice Cream Flavor"
p ice_cream_flavor

ice_cream_flavor.each do |flavor|
  puts "I love this #{flavor}"
end

ice_cream_flavor.map! do |flavor|
  puts flavor
  flavor << "-bean"
end

p ice_cream_flavor

condiments = {"sprinkles" => "on top", "walnuts" => "mix in", "gummy bears" => "on the bottom"}

puts "Condiments"
p condiments

condiments.each do |toppings, location|
  puts "#{toppings} are supposed to be #{location}"
end