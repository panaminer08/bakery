require 'bakery'

class Cake < Bakery
    def initialize(type, height, layers) 
        @taste = taste
        @height = height
        @layers = layers
    end

    def wedding
        "fully customizable and dressed the way you like."
    end

    def christmas
        "This will definitely get the season right before the entrance of the 'New Year'!"
    end 

    def general
        "if you want a cake just to have a cake, this option is calling you out."
    end
    include Baker
end