#Input a method to your file that takes a number of Fibonacci terms to generate and returns an array of the terms.
#The method should work up to (100)
#Ex. fib(4) => [0,1,1,2].
array_1 = [24,7,0,420,666,7,11,69]

def special_method(array_1,item)
i = 0
while array_1[i] != item
i += 1
   if array_1[i] == item
     p i
    break
   end
    end
  end
 special_method(array_1,420)
puts
puts

 puts "Enter the number of fibonacci generation you would like iterated:"
 def fibonacci

   generation_number = gets.chomp
   array_1 = [0,1] #will contain fib sequence
   array_2 =[0]


   while array_1.length  != generation_number.to_i
      new_number = array_1.last + array_2.last # =>3

      array_2.push(array_1.last) #a2 => [0,1,1,2]

      array_1.push(new_number) #[0,1,1,2,3]

      #array_2.push(new_number) #[0,1,]
   #puts
      #puts array_1

   end #while end
        puts array_1
  end #def end
  fibonacci

 def bubble_sort
arr = [8,6,5,1,3,0,9] #array length = 7
  temp = 0

  arr.each do |number| #iterator
    i = 0 #index value 0
    x = 1 #index value 1

  while (x < arr.length)
  # when x reaches array length, loop is over

      if arr[i] > arr[x]
  #index value 0 >index value 1
        temp = arr[i]
  # SWAP values using temp variable place holder
        arr[i] = arr[x]
        arr[x] = temp
  #now 6 is where 8 used to be
        p arr
puts
puts
end #end if
i+=1
x+=1
  end #end while

  end  #end Each
 arr
end  #end def
bubble_sort



