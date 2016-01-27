class Square
    @@side_length

    def initialize(length)
        @@side_length=length
        return @@side_length
    end

    def area
        return @@side_length * @@side_length
    end

    def side_length=(length)
        @@side_length=length
    end

    def side_length
        puts @@side_length
        return @@side_length
    end
end

s = Square.new(2)
p s.area
