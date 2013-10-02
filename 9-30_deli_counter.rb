
# Build a method that a new customer will use when entering our deli. 
# The method, take_a_number, should accept the current line of people, 
# along with the new person's name, and return their position in line 
# (and no 0 index, these are normal people, 
# if they are 7th in line, tell them that, not 6).

# Build a method now_serving. This method should call out (via puts) the 
# next person in line and remove them from the line.

# Build a method line that shows people their current place in line.



# deli = empty array

def take_a_number(current_line, name)
  your_spot = current_line.size + 1

  message = "Hello, #{name}, you are ##{your_spot}."
  message
end

def now_serving(current_line)
  next_customer = current_line.shift
  puts "Come on up, #{next_customer}!"
  current_line
end

def line(current_line, name)
  your_spot_in_line = current_line.index(name)+1
  puts "Hello, #{name}, your current position in line is: ##{your_spot_in_line}."
end

def line_alt(current_line)
  status = "The line is currently: "
  current_line.each_with_index do |person, index|
    status += "#{index+1}. #{person} "
  end
  status
end


