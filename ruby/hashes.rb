client = {}

def guide(hash, key, value)
  case
  when value.to_i > 0
    value = value.to_i
  when value.include?("yes")
    value = true
  when value.include?("no")
    value = false
  else
    value = value.upcase
  end
  hash.store(key.to_sym, value)
end

#Driver code

#Interior design client details
puts "Interior Design Client Information Form"
#-------------------------------------
#Client's Information
puts "Client's 'Name'?"
input = gets.chomp
guide(client, "name", input)

puts "Client's 'Age'?"
input = gets.chomp
guide(client, "age", input)

puts "How many 'Children' does the client have?"
input = gets.chomp
guide(client, "children", input)

puts "Type of 'Decor' preference the client likes?"
input = gets.chomp
guide(client, "decor", input)

puts "How many 'Rooms' does the client want to be redecorated?"
input = gets.chomp
guide(client, "rooms", input)

puts "Does the client want the 'Kitchen' redesigned as well? (Yes/No)"
input = gets.chomp
  until input == "yes" || input == "no"
  puts "Does the client want the 'Kitchen' redesigned as well? (Yes/No)"
  input = gets.chomp
end
guide(client, "kitchen ", input)

puts "Does the client acknowledge he/she must submit a 'Payment' for the amount of the project before the project commenses? (Yes/No)"
input = gets.chomp
  until input == "yes" || input == "no"
  puts "Does the client acknowledge he/she must submit a 'Payment' for the amount of the project before redesign commenses? (Yes/No)"
  input = gets.chomp
end
guide(client, "payment", input)
#-------------------------------------
client.each do |question, response|
  puts "#{question.to_s.upcase}:
  #{response}"
end
#-------------------------------------
puts "Do you need to edit client's form?"
input = gets.chomp
  if
    input == "no" || input == "done"
  else
    puts "Which 'Section' you need to edit? (Name, Age, Decor, Rooms, Kitchen, Payment)"
    section = gets.chomp
    puts "What would you like input in the 'Section'?"
    input = gets.chomp!
    guide(client, section, input)
end
#-------------------------------------
client.each do |question, response|
  puts "#{question.to_s.upcase}: #{response}"
end
#-------------------------------------
p client

client =["Guillermo Soto", "27", "3", "Modern", "5", "Yes", "Yes"]













