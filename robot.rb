class Robot



    def initialize(position)
        @position = position
        @x = @position[:x]
        @y = @position[:y]
        @direction_arr = [:left, :up, :right, :down]
        @dir_index = 0
        @direction = @direction_arr[@dir_index]
    end

    def position
        @position[:x] = @x
        @position[:y] = @y
        @position
    end

    def direction
        @direction
    end

    def turn_right
        @dir_index += 1
        if @dir_index > 3
            @dir_index = 0        
        end
        @direction = @direction_arr[@dir_index]
        return @direction
    end

    def turn_left
        @dir_index -= 1
        if @dir_index < 0
            @dir_index = 3
        end
        @direction = @direction_arr[@dir_index]
        return @direction
    end

    def advance
        case @direction
        when :left
            @x -= 3
        when :right
            @x += 3
        when :up
            @y -= 3
        when :down
            @y += 3
        end
    end

    def instruction(str)
        str.chars.each do |value|
            case value
            when "r"
            turn_left
            when "l"
            turn_right
            when "a"
            advance
            else
                puts "invalid instruction"
            end
        end
    end


end