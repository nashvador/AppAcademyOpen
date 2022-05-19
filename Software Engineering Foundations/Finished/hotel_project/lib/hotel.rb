require_relative "room"

class Hotel
  def initialize(name_of_hotel, room_and_space)
    @name = name_of_hotel
    @rooms = {}
    room_and_space.each do |key, value|
        @rooms[key] = Room.new(value)
    end    
  end

  def name
name_array = @name.split(" ")
new_name_array = []
name_array.each do |word|
    new_name_array << word.capitalize
end
return new_name_array.join(" ")
    end

  def rooms
    @rooms
  end

  def room_exists?(room_name)
    if @rooms.has_key?(room_name)
        return true
    else
        return false
    end
  end

  def check_in(person, room_name)
    if room_exists?(room_name)
        if @rooms[room_name].add_occupant(person)
            puts "check in successful"
        else
            puts "sorry, room is full"
        end
    else
        print "sorry, room does not exist"
    end
    end

  def has_vacancy?    
    vacancy_boolean = false
    @rooms.each_value do |val|
      if val.full?
      else
        vacancy_boolean = true
      end
    end
    return vacancy_boolean
  end

  def list_rooms
    @rooms.each do |key, val|
      print "/" + key + ".*"
      print val.available_space.to_s
      print 'n' 
    end

  end


    
end
