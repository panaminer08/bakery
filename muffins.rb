require 'bakery'

class Muffins < bakery
    def initialize(vegan, type, radius)
        @vegan= vegan
        @type = type
        @radius = radius 
    end

    def blueberry
        "Nice a berry, picked fresh and made daily"
    end

    def new_york
        "Taste the thunder of everything good NY has to offer, made to One"
    end

    def chocolate
        "It's just what you expected, a volcanic eruption of chocolate."
    end
    include Bakery
end