class Pirate

    attr_accessor :name, :weight, :height

    @@all = []
    def initialize(hash1)
        @name = hash1[:name]
        @weight = hash1[:weight]
        @height = hash1[:height]
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all = []
    end
end