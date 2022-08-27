def is_prime(num)

    i = 2
    while i <= num do
     is_prime = true 
     i.times do |n|
       if n > 1 && i % n == 0 && n != i 
         is_prime = false 
       end
     end
 
  i +=1
   end
   puts is_prime
 end
 
puts "Enter a number from 0 to 1000 ="
num = gets.to_i
is_prime(num)