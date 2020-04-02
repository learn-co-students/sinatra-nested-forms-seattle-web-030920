class Ship
attr_accessor :name, :type, :booty

@@all = []
    def initialize(hash2)
        @name = hash2[:name]
        @type = hash2[:type]
        @booty = hash2[:booty]
        @@all << self
    end

    def self.all
        @@all 
    end

    def self.clear
        @@all = []
    end
end