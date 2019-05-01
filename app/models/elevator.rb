class Elevator < ApplicationRecord
  belongs_to :building

  def select_floor
    max_floor = building.total_floors

    if self.target_floor > max_floor || self.target_floor < 1
      puts "That floor is not accessible, please select another floor."
    elsif self.target_floor <= max_floor 
      puts "You selected floor #{target_floor}, going #{direction}"
    end
  end

  def show_floor

    if self.direction == "up"
      until self.current_floor == target_floor
        p self.current_floor
        sleep 1
        self.current_floor += 1
      end
    end

    if self.direction == "down"
      until self.current_floor == target_floor
        p self.current_floor
        sleep 1
        self.current_floor -= 1
      end
    end

    puts "You have arrived at floor #{target_floor}"
  end
end
