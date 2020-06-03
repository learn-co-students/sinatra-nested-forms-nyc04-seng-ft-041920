class Pirate

    attr_accessor :name, :weight, :height
    @@all = []

        def initialize(name, weight, height)
        @name = name
        @weight = weight
        @height = height

        @@all << self
    end

    # def initialize(params)
    #     @name = params[:name]
    #     @weight = params[:weight]
    #     @height = params[:height]

    #     @@all << self
    # end

    def self.all
        @@all
    end
end