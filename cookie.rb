require '/bakery'

class Cookie < Bakery
    attr_accessor :
    def initialize(taste, radius, vegan, label)
        @taste = taste
        @radius = radius
        @vegan = vegan
        @temperature = temperature
        @label = label
    end

    def soft
        "Melts in your mouth"
    end

    def hard
        "Nice crunch with the perfect texture"
    end

    def medium
        "Playing it the safe route"
    end
    include Bakery
end
