# Tower of Hanoi

peg1 = [1,2,3,4] # discs start on this peg - left-->right = top-->bottom
peg2 = []
peg3 = [] # the goal peg

currently_holding = []

# the general flow:
# are all discs on right peg? Good, you won. If not:
## find the smallest top-most disc and move it to a peg that has a larger disc top-most. 
            # (lift_lowest_disc)           (add_disc_to_peg)            (inspect_tops)
#### if no options, move smallest top disc to middle peg
###### if middle peg is occupied, move smallest possible disc to right peg. 

def inspect_tops(peg1, peg2, peg3)
  all_pegs = [peg1,peg2,peg3]

  current_tops = all_pegs.collect do |peg|
    peg[0]
  end
  current_tops

end

def lift_lowest_disc(peg1, peg2, peg3, currently_holding)
  inspect_tops(peg1, peg2, peg3).each_with_index do |disc, peg| 
    if disc != nil && peg == 0
      currently_holding << inspect_tops(peg1, peg2, peg3)[0]
      peg1.delete_at(0)
    elsif disc != nil && peg == 1
      currently_holding << inspect_tops(peg1, peg2, peg3)[1]
      peg2.delete_at(0)
    elsif disc != nil && peg == 2
      currently_holding << inspect_tops(peg1, peg2, peg3)[2]
      peg3.delete_at(0)
    end
  end
  currently_holding
  # the above is not DRY and can probably be made into other methods
end

def add_disc_to_peg(peg1, peg2, peg3, currently_holding)
  inspect_tops(peg1, peg2, peg3).each_with_index do |disc, peg|



      # if disc > currently_holding[0] && peg == 0
      #   peg1 << currently_holding[0]
      #   currently_holding.delete_at(0)
      # elsif disc > currently_holding[0] && peg == 1
      #   peg2 << currently_holding[0]
      #   currently_holding.delete_at(0)
      # elsif disc > currently_holding[0] && peg == 2
      #   peg3 << currently_holding[0]
      #   currently_holding.delete_at(0)
  end
end


lift_lowest_disc(peg1, peg2, peg3, currently_holding)
add_disc_to_peg(peg1, peg2, peg3, currently_holding)

p peg1
p peg2
p peg3







