def vampire_test
  puts "What is your name? "
  name = gets.chomp
  puts "How old are you? "
  age = gets.to_i
  puts "What year were you born? "
  year = gets.to_i
  puts "Would you like some garlic bread?"
  garlic_bread = gets.chomp
  puts "Would you like to enroll in our company's health insurance?"
  health_insurance = gets.chomp

  calculated_age = 2017 - year
  vampire_status = "Results are inconclusive."
    if age == calculated_age && (garlic_bread == "yes" || health_insurance == "yes")
    vampire_status = "Probably not a vampire."
    end

    if age != calculated_age && (garlic_bread == "no" || health_insurance == "no")
    vampire_status = "Probably a vampire."
    end

    if age != calculated_age && garlic_bread == "no" && health_insurance == "no"
    vampire_status = "Almost certainly a vampire."
    end
    if name == "Drake Cula" || name == "Tu Fang"
    vampire_status = "Definitely a vampire."
    end

end

puts "How many employees are possibly vampires?"
employee_number = gets.to_i
i = 0
until i == employee_number
  vampire_test
  i += 1
end

allergies = " "
until allergies == "done" || allergies == "sunshine"
  puts "What are you allergic to?"
  allergies = gets.chomp
end
if allergies == "sunshine"
    vampire_status ="Probably a vampire."
  end
   puts vampire_status

p "Actually, never mind! What do these questions have to do with anything? Let's all be friends."