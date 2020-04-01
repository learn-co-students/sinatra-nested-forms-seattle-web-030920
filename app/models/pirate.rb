class Pirate
    attr_accessor :name, :height, :weight, :ships

    @@all = []

    def initialize(params)
        params.each {|key, value| self.send(("#{key}="), value)}
        @@all << self
    end

    def self.all
        @@all
    end

end