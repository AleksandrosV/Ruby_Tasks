require '/home/ivaylo300/Desktop/Ruby_Tasks/task_7/class_fish.rb'
require '/home/ivaylo300/Desktop/Ruby_Tasks/task_7/class_pond.rb'


def interactive_menu
    
    lake = Pond.new()
    fishesInTheLake = lake.capacity   

    fishesOutsideTheLake = {}
    carpCounter = 0         #counter for Carps outside the pond
    sheatFishCounter = 0    #counter for SheatFish outside the pond

    c = 0                   #counter for Carps in the pond
    s = 0                   #counter for SheatFish in the pond
    
    while true do
        sleep 3
        puts
        p "Please enter one of the following selections: "
        p "View capacity (or just enter 1)"
        p "View state of the pond (or just enter 2)"
        p "Add fish (or just enter 3)"
        p "Catch a fish (or just enter 4)"
        p "Create new fish (or just enter 5)"
        p "Finish the game (or just enter 6)"
    
        selection = gets.chomp

        if selection == "View capacity" || selection == "1"
            p lake.showCapacity
        elsif selection == "View state" || selection == "2"
            p lake.showState
        elsif selection == "Add fish" || selection == "3"

            if fishesOutsideTheLake.empty?()
                p "Currently there are no fishes you can add to the pond. Try creating a fish by entering 'Create new fish' or enter 5."
            elsif
                p "What kind of fish do you like to add? Your current state outside the lake is:"
                p "Carp: #{carpCounter - c}" 
                p "SheatFish: #{sheatFishCounter - s}" 
                userInput = gets.chomp

                if userInput == "Carp" 
                    if fishesOutsideTheLake.key?(:"carp#{c+1}")
                        lake.obtainFish("carp#{c+1}", fishesOutsideTheLake[:"carp#{c+1}"])
                        fishesOutsideTheLake.delete(:"carp#{c+1}") 
                        c+=1
                        puts "The fish is added to the pond!"
                        
                        #for debugging purposes
                        # puts "Fishes outside the lake: #{fishesOutsideTheLake}"
                        # puts lake.showCapacity 
                        # puts lake.capacity #Show array of fishes in the lake
                        # puts "Carps outside the lake: #{carpCounter-c}"
                        # puts "Carps inside the lake: #{c}"
                    else
                        puts "You cannot add Carps!"
                    end
                    
                elsif userInput == "SheatFish" 

                    if fishesOutsideTheLake.key?(:"sheatFish#{s+1}")
                        lake.obtainFish("sheatFish#{s+1}", fishesOutsideTheLake[:"sheatFish#{s+1}"])
                        fishesOutsideTheLake.delete(:"sheatFish#{s+1}")
                        s+=1
                        puts "The fish is added to the pond!"

                        #For debugging purposes
                        # puts "Fishes outside the lake: #{fishesOutsideTheLake}"
                        # puts lake.showCapacity 
                        # puts lake.capacity #Show array of fishes in the lake
                        # puts "sheatFish outside the lake: #{sheatFishCounter-s}"
                        # puts "sheatFish inside the lake #{s}"
                    else
                        puts "You cannot add SheatFishes!"
                    end
                else
                    puts "Wrong selection, please enter either \"Carp\" or \"SheatFish\"."
                end
            end

        elsif selection == "Catch a fish" || selection == "4"
            
            if fishesInTheLake.empty?
                puts "There are no fishes in the lake! Please add fishes first."
            else
                puts "What kind of fish did you catch? Your current state inside the pond is:"
                p "Carp: #{c}" 
                p "SheatFish: #{s}" 

                caughtFish = gets.chomp

                if caughtFish == "Carp"

                    if fishesInTheLake.key?("carp#{c}")
                        fishesOutsideTheLake[:"carp#{c}"] = fishesInTheLake["carp#{c}"]
                        lake.lostFish("carp#{c}")
                        c-=1
                        puts "Carp was sucessfully caught!"
                        # for debugging purposes
                        # puts "Fishes in the lake #{fishesInTheLake}"
                        # puts "Fishes outside the lake: #{fishesOutsideTheLake}"
                    else
                        puts "There are no Carps to catch."
                    end
                elsif caughtFish == "SheatFish"
                    if fishesInTheLake.key?("sheatFish#{s}")
                        fishesOutsideTheLake[:"sheatFish#{s}"] = fishesInTheLake["sheatFish#{s}"]
                        lake.lostFish("sheatFish#{s}")
                        s-=1   
                        puts "SheatFish was sucessfully caught!"
                        # for debugging purposes                         
                        # puts "Fishes in the lake #{fishesInTheLake}"
                        # puts "Fishes outside the lake: #{fishesOutsideTheLake}"
                    else
                        puts "There are no SheatFishes to catch."
                    end
                else
                    puts "Wrong selection, please enter either \"Carp\" or \"SheatFish\"."
                end
            end

        elsif selection == "Create new fish" || selection == "5"
            
            puts "Do you want to create a 'Carp' or a 'SheatFish'?"
            typeOfFish = gets.chomp
        
                if typeOfFish == "Carp"
                puts "What is the weight of the fish?"
                weight = gets.chomp       
                puts "What is the color of the fish?"
                color = gets.chomp

                carp = Carp.new(weight, color)
                fishesOutsideTheLake[:"carp#{carpCounter+1}"] = "#{weight}, #{color}"
                carpCounter +=1
                puts "Fish was successfully created."

                elsif typeOfFish == "SheatFish"
                    puts "What is the weight of this fish?"
                    weight = gets.chomp
                    puts "What is the whiscker length?"
                    whisckerLength = gets.chomp

                    sheatFish = SheatFish.new(weight, whisckerLength)
                    fishesOutsideTheLake[:"sheatFish#{sheatFishCounter+1}"] = "#{weight}, #{whisckerLength}"
                    sheatFishCounter+=1
                    puts "Fish was successfully created."
                else
                    puts "Wrong selection, please enter either \"Carp\" or \"SheatFish\"."
                end

        elsif selection == "Finish the game" || selection == "6"
            puts "Well done! You've finished the game as follows:"
            puts lake.showCapacity
            puts lake.showState
            puts 
            if fishesOutsideTheLake.empty?
                puts "There are no fishes outside the lake!"
            else
                puts "The fishes outside the lake are: "
                fishesOutsideTheLake.each_pair {|key, value| puts "#{key} - #{value}"}
            end
            
            puts
            if fishesInTheLake.empty?
                puts "There are no fishes inside the lake!"
            else
                puts "The fishes inside the lake are: "
                fishesInTheLake.each_pair {|key, value| puts "#{key} - #{value}"}
            end
            break
        end
    end
end


interactive_menu
