def badge(*names)
  speaker_greeting = []
  names.each do |name|
    speaker_greeting << "Hello, my name is #{name}."
  end

  speaker_greeting
end

def assign_room(*names)
  room = 1
  assigned_rooms = []
  assignment_message = []
  names.each do |name|
    # assignment_message << "Hello, #{name}! You'll be assigned to room #{room}!"
    assigned_rooms << "#{name}-#{room}"
    room += 1
  end

  assigned_rooms
end


def names_test(*names)
  names
end

def to_print(badges, rooms)
  name_room = []
  puts "- - - - - - - - - - - - - -"
  puts "the following are speaker greetings:"
  puts "- - - - - - - - - - - - - -"
  puts badges
  puts "- - - - - - - - - - - - - -"
  puts "the following are the room assignments:"
  puts "- - - - - - - - - - - - - -"
  puts rooms
  puts "- - - - - - - - - - - - - -"
  puts "the following are the speaker room assignment messages:"
  puts "- - - - - - - - - - - - - -"
  rooms.each do |assignment|
    name_room = assignment.split("-")
    puts "Hello, #{name_room[0]}! You'll be assigned to room #{name_room[1]}!"
  end
end

# speakers = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]
# i tried to pass the above in to the method but it didn't work.


to_print(
  badge("Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"),
  assign_room("Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz")
)