def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(badges)
   badges.map{ |name| badge_maker(name)}
end

def assign_rooms(attendees)
    new_array = []
    attendees.each_with_index do |speaker, index|
        new_array << "Hello, #{speaker}! You'll be assigned to room #{index + 1}!"
    end
    new_array
end

def printer(guests)
    batch_badge_creator(guests).each do |greeting|
        puts greeting
    end
    assign_rooms(guests).each do |room|
        puts room
    end
end