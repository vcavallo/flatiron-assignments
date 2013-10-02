# Tower of Hanoi

peg_1 = [1,2,3,4] # discs start on this peg - left-->right = top-->bottom
peg_2 = []
peg_3 = [] # the goal peg

currently_holding = []

# the general flow:
# are all discs on right peg? Good, you won. If not:
## find the smallest top-most disc and move it to a peg that has a larger disc top-most. 
#### if no options, move smallest top disc to middle peg
###### if middle peg is occupied, move smallest possible disc to right peg. 

def inspect_tops(peg_1, peg_2, peg_3)
  all_pegs = [peg_1,peg_2,peg_3]

  current_tops = all_pegs.collect do |peg|
    peg[0]
  end
  current_tops

end

def lift_lowest_disc(peg_1, peg_2, peg_3, currently_holding)
  inspect_tops(peg_1, peg_2, peg_3).each_with_index do |disc, peg| 
    if disc != nil && peg == 0
      currently_holding << inspect_tops(peg_1, peg_2, peg_3)[0]
      peg_1.delete_at(0)
    elsif disc != nil && peg == 1
      currently_holding << inspect_tops(peg_1, peg_2, peg_3)[1]
      peg_2.delete_at(0)
    elsif disc != nil && peg == 2
      currently_holding << inspect_tops(peg_1, peg_2, peg_3)[2]
      peg_3.delete_at(0)
    end
  end
  currently_holding
  # the above is not DRY and can probably be made into other methods
end


