class LiftView

    def idle(current_floor)
        puts "LIFT IS IDLE AT LEVEL #{current_floor}"
        puts ""
    end

    def instruction
        return gets.strip
    end

    def lift_called(level, direction)
        puts "LEVEL #{level} #{direction} ILLUMINATED"
    end

    def floor_pressed_in_lift(level)
        puts "LIFT ILLUMINATES LEVEL #{level}"
    end

    def move_up(current_floor)
        puts ""
        puts "LIFT MOVES UP TO LEVEL #{current_floor}"
    end

    def move_down(current_floor)
        puts ""
        puts "LIFT MOVES DOWN TO LEVEL #{current_floor}"
    end

    def change_directions(direction)
        puts "LIFT NOW MOVING #{direction}"
    end

    def display_current_instructions(instructions)
        instructions.each do |instruction|
            case instruction[:type]
            when "UP", "DOWN"
                puts "LEVEL #{instruction[:level]} #{instruction[:type]} ILLUMINATED"
            when "LIFT"
                puts "LIFT ILLUMINATES LEVEL #{instruction[:level]}"
            end
        end
    end

    def open_doors
        puts ""
        puts "LIFT DOORS OPEN"
        puts "What level would you like to go to?"
    end

    def close_doors
        puts ""
        puts "LIFT DOORS CLOSE"
    end

    def exit
        puts "LIFT SHUTTING DOWN"
    end
end