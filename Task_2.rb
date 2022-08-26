puts "Enter number P ="
p = gets.to_i
puts "Enter number H ="
h = gets.to_i
sum = 0
product = 1
arr = []
count_of_numbers = 0

while true
    puts "Enter numbers ="
    numbers = gets.to_i
    if numbers == p || numbers == h
        break
    end
    if numbers < p
        sum += numbers
    end
    if numbers > h
        product *= numbers
    end
    if numbers > p && numbers < h
        arr.push(numbers)
    end
end

if product == 1
    product = 0
end

puts "The sum of the numbers less than P is = #{sum}"
puts "The product of the numbers greater than H is = #{product}"
puts "The count of numbers from P to H is = #{arr.length()}"
