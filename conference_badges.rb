
def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(array_of_names)
    messages = Array.new
    array_of_names.each do |person|
         messages.push(badge_maker(person))
    end
    return messages
end

def assign_rooms(speakers)
    print_speakers = Array.new
    speakers.each do |speaker|
        print_speakers.push("Hello, #{speaker}! You'll be assigned to room #{speakers.index(speaker) + 1}!")
    end
    return print_speakers
end

def printer(attendees)
    batch_badge_creator(attendees).each {|print_badge| puts print_badge}
    assign_rooms(attendees).each {|print_room| puts print_room}
end