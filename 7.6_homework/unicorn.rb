class Unicorn

    attr_reader :name, :color, :horn

    def initialize(name, color, horn = "1 inch")
        @name = name.split.map(&:capitalize).join(" ")
        @color = color.split.map(&:capitalize).join(" ")
        @horn = horn.split.map(&:capitalize).join(" ")
        @powers = []
        
    end

end