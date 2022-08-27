puts "Please select: Rectangle, Triangle or Circle."
form = gets.chomp
if form == "Rectangle"
    puts "Enter a = "
    a = gets.to_i
    puts "Enter b = "
    b = gets.to_i
    result = a * b
    puts "The square of the rectangle is = #{result}"
    elsif
        form == "Triangle"
        puts "Enter a = "
        a = gets.to_i
        puts "Enter b = "
        b = gets.to_i
        puts "Enter c = "
        c = gets.to_i
        if a + b > c && b + c > a && a + c >b
        x = (a+b+c)/2
        result = x* (x-a) * (x-b) * (x-c)
        puts "The square of the triangle is = #{result}"
        else
            puts "Please enter valid length for a, b and c!"
        end
                
        elsif form == "Circle"
            puts "Enter raduis="
            r = gets.to_i
            result = r*r * Math::PI
            puts "The square of the triangle is = #{result}"
end