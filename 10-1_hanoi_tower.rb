# Tower of Hanoi

peg1 = [4,3,2,1] # discs start on this peg - left-->right = bottom-->top
peg2 = []
peg3 = [] # the goal peg

# Move the disks from one peg to another following the rules of Hanoi.
#
# number_of_disks - the total number of disks
# from - the starting peg
# to - the ending (goal) peg
# via - the remaining peg (b in this case)

puts "starting situation:"
puts "peg1 = #{peg1}"
puts "peg2 = #{peg2}"
puts "peg3 = #{peg3}"

def move_disk(number_of_disks, from, to, via)
  # when you have one disk left you're done.
  # so stop recursing.
  if number_of_disks == 1
    to.push(from.pop)
  else
    # "move n-1 discs from A to B"
    via.push(from.pop)
    # actually fo the 'n-1' mentioned in other steps
    # and repeat the process
    move_disk(number_of_disks - 1, from, to, via)
    # "move n-1 from B to C"
    to.push(via.pop)
  end
  to
end

# here we go!
move_disk(4, peg1, peg3, peg2)

puts "ending situation:"
puts "peg1 = #{peg1}"
puts "peg2 = #{peg2}"
puts "peg3 = #{peg3}"

# this is still really confusing, but it follows the instructions
# wikipedia describes exactly, so i guess it works...




