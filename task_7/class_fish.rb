class Fish

    attr_accessor :weight

    def initialize(weight)
    @weight = weight
    end

end

class SheatFish < Fish

    attr_accessor :weight, :whisckerLength

    def initialize(weight, whisckerLength)
    @weight = weight
    @whisckerLength = whisckerLength
    end

    def fishInfo
    p "You have created a Sheatfish with weight: #{weight} and whiscer length: #{whisckerLength}"
    end
end

class Carp < Fish

    attr_accessor :weight, :color

    def initialize(weight, color)
    @weight = weight
    @color = color
    end
end
