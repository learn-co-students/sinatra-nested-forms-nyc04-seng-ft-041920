class Ship
    attr_accessor :name, :type, :booty
    @@all = []

    def initialize(given)
        @name = given[:name]
        @type = given[:type]
        @booty = given[:booty]
        @@all << self
    end

    def self.all
        @@all 
    end

    def self.clear
        @@all = Array.new
    end
end