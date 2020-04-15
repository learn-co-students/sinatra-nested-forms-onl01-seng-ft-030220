class Ship
    attr_accessor :name, :type, :booty_attributes
    @@all = []
    def initialize(params)
        @name = name 
        @type = type 
        @booty = booty
        @@all << self 
    end
    def self.all 
        @@all 
    end
    def self.clear 
        @@all = []
    end
end