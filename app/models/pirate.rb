class Pirate
    attr_accessor :name, :weight, :height
    @@all = []

    def initialize(given)
        @name = given[:name]
        @weight = given[:weight]
        @height = given[:height]
        @@all << self
    end

    def self.all
        @@all
    end
end