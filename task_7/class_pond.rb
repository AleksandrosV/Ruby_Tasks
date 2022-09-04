class Pond
    attr_accessor :capacity
   
    def initialize (capacity: {})
     @capacity = capacity
    end
   
    def showState()
       if @capacity.length < 5
            "The state of the pond is POOR"
       elsif @capacity.length >= 10 
            "The state of the pond is RICH"
       elsif @capacity.length >=5
            "The state of the pond is NORMAL"
       end
   end
   
    def obtainFish(fish, properties)
       @capacity[fish] = properties 
    end
   
    def lostFish(fish)
       @capacity.delete(fish)
    end
   
    def showCapacity()
        "The current capacity of the pond is: #{@capacity.length}"
    end
   
   end