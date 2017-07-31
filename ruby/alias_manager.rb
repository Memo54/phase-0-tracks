puts "____________________________________________________________________________"
puts
#The agent will enter his name.
puts "ENTER YOUR NAME"
agent_name = gets.chomp!

puts "____________________________________________________________________________"
puts
puts
# Name of the spy agency.
puts "WELCOME TO M.I.7"

#Durress challenge is away to find out whoever is logging into MI7 portal is an actual agent and if they are ok or under duress.
puts "#{agent_name}, I need to do an ID
          challenge first. Code in:"
puts "____________________________________________________________________________"
puts
puts
#An ID challenge will popout for agent to code in: if agent is under durress, the agent will answer 'Ruby' (first letter you must capitalize), if agent is ok or normal the agent will answer 'Everest'.
puts "Sparrow"
responce = gets.chomp
  if
    responce == "Ruby" || responce != "Everest"
    puts "This message will self-destruct in five seconds."
  5.downto(1) do |i|
   puts "💣:#{'%02d' % i}"
   sleep 1
   end
   puts "💥"
   exit
  end
puts "____________________________________________________________________________"
puts
puts
puts "Mission Commander Swanbeck:"
puts
puts "Good morning, Special Agent #{agent_name}. Your mission, should you choose to accept it, involves the recovery of a stolen item designated 'Chimera.' You may select any two team members, but it is essential that the third member of your team be Nyah Nordoff-Hall. She is a civilian, and a highly capable professional thief. You have forty-eight hours to recruit Miss Hall and meet me in Seville to receive your assignment. As always, should any member of your team be caught or killed, the Secretary will disavow all knowledge of your actions. And Special Agent #{agent_name}, the next time you go on holiday, please be good enough to let us know where you're going."
puts "____________________________________________________________________________"
puts
puts
if agent_name
#The agent must enter first and last name in order to proceed to creat an alias.
puts "Before we continue Special Agent #{agent_name}, enter your First and Last name into our ALIAS Generator:"
#display final result
  final_alias = []
  while final_alias.length !=  2

puts "____________________________________________________________________________"
puts
puts

puts "Enter Your Name:"
agent = gets.chomp


#Consonants will convert to the next consonant: (m => n or r => s).
  not_vowels  = ['b','c','f','g','j','k','l','m','p','q','r','s','v','w','x','y']

#Vowels will convert to next vowel in the sequence.
  vowels = ['a','e','i','o','u']

#The consonants post vowel aren't allowed to be used in the method, it will (.next).
#If the letter Z is an edge case, it will convert to 'B'.
  pre_vowels  = ['d','h','n','t','z']

#The name entered is transformed into an array, each letter have become objects
  code_array1 = agent.downcase.split('')

#Encrypted letters are collected
  new_code_name = []

#When one name is finished translated, end the loop.
  number_of_letters = code_array1.length
#For example its going to show like this:
#p code_array1
# ["G", "u", "i", "l", "l", "e", "r", "m", "o"]

  new_alias = []


  while new_code_name.length != number_of_letters

    first_letter = code_array1.first


      if vowels.any? {|letter| letter == first_letter}

         if first_letter == 'a'
            first_letter = 'e'
            new_code_name.push(first_letter)

         elsif first_letter == 'e'
            first_letter = 'i'
            new_code_name.push(first_letter)

         elsif first_letter == 'i'
            first_letter = 'o'
            new_code_name.push(first_letter)

         elsif first_letter == 'o'
            first_letter = 'u'
            new_code_name.push(first_letter)

         else  first_letter == 'u'
            first_letter= 'a'
            new_code_name.push(first_letter)
      end

   elsif pre_vowels.any? {|letter| letter == first_letter}

      if first_letter == 'd'
         first_letter = 'f'
         new_code_name.push(first_letter)

      elsif first_letter == 'h'
            first_letter = 'j'
            new_code_name.push(first_letter)

      elsif first_letter == 'n'
            first_letter = 'p'
            new_code_name.push(first_letter)

      elsif first_letter == 't'
            first_letter = 'v'
            new_code_name.push(first_letter)

      elsif first_letter == 'z'
            first_letter ='b'
            new_code_name.push(first_letter)
   end
elsif not_vowels.select {|consonant| consonant == first_letter}
         new_consonant = first_letter.next
         new_code_name.push(new_consonant)
end
code_array1.rotate!
puts
p new_code_name
end
new_alias.push(new_code_name.join)
p new_alias
final_alias.push(new_alias)
end
puts "____________________________________________________________________________"
puts
puts
puts "Your New Alias Is:"
p final_alias
puts "Good Luck on your next mission Special Agent #{agent_name}!"
end
puts "____________________________________________________________________________"
puts
puts

puts "This message will self-destruct in five seconds."
5.downto(1) do |i|
  puts "💣:#{'%02d' % i}"
  sleep 1
end
puts "💥"
puts "____________________________________________________________________________"
exit






