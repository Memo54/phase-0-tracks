puts "Hamster Adoption Form"
puts "What is your hamster's name?"
hamster_name = gets.chomp.to_s
puts "What is the volume level of your hamster? (1-10)"
hamster_volume = gets.chomp.to_i
puts "What fur color does your hamster have?"
hamster_color = gets.chomp.to_s
puts "Would you recommend this hamster for adoption? (Y/N)"
hamster_recommend = gets.chomp.to_s
puts "Approximately what is the age of your hamster?"
hamster_age = gets.chomp.to_i

if hamster_age == "".to_i
  hamster_age = "n/a"
  puts hamster_age
else
  puts hamster_age
end

puts "Hamster Name is #{hamster_name}!"
puts "Hamster Volume is #{hamster_volume}!"
puts "Hamster Fur Color is #{hamster_color}!"
puts "Hamster Recommend is #{hamster_recommend}!"
puts "Hamster Age is #{hamster_age}!"
