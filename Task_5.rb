puts "Cities: Gabrovo, Sofia, Plovdiv, Athens, Thesaloniki, Kavala, Lyon, Paris, Dijon"

puts "Enter city :"
city = gets.chomp

bgrArr = ["Gabrovo", "Sofia","Plovdiv"]
grArr = ["Athens","Thesaloniki", "Kavala"]
frArr = ["Lyon","Paris","Dijon"]
hackerrank = {"Bulgaria" => bgrArr, "Greece" => grArr, "France" => frArr}
hackerrank.each do |key, value|
  value.each do |x|
    if x == city
    puts "#{city} is located in #{key}."
    end
  end
end
