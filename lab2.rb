## Apple Picker ##

 # Create a method, apple_picker, that will pick all the apples out of an array. 
 # Implement it with collect and then implement it with select. 
 # Write a sentence about how select differs from collect.

def apple_picker_collect(array)
  apples = array.collect do |item|
    item if item == "apple"
  end
  apples.compact
end

def apple_picker_select(array)
  array.select do |item|
    item == "apple"
  end
end

## `collect` will return the last line of the block given in place 
## of the element of the array it is iterating over. 
## `select` will return a new array containing any element of the 
## given array for which the given block returns `true`

holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :forth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

# 1. How would you access the second supply for the forth_of_july? 
# ex: holiday_supplies[:spring][:memorial_day][0]

holiday_supplies[:summer][:forth_of_july][1]

# 2. Add a supply to a Winter holiday.

holiday_supplies[:winter][:new_years] << "Booze"

# 3. Add a supply to memorial day.

holiday_supplies[:spring][:memorial_day] << "SUNSHINE, MAN!"

# 4. Add a new holiday to any season with supplies.

holiday_supplies[:spring][:earth_day] = ["hippie clothes", "recycling bags"]

# 5. Write a method to collect all Winter supplies from all the winter holidays. 
# ex: winter_suppliers(holiday_supplies) #=> ["Lights", "Wreath", etc]

def collect_winter_supplies(list)

# using new array and then .each = no-no. i know...

  all_supplies = []

  list.each do |season, holidays_hash|
    if season == :winter
      holidays_hash.each do |holiday_name, supplies|
        supplies.each do |supply|
          all_supplies << supply
        end
      end
    end
  end
  all_supplies

end

# 6. Write a loop to list out all the supplies you have for 
# each holiday and the season.

def every_supply(list)

  list.each do |season, holidays_hash|
    # in season there are:
    puts "In #{season.to_s.capitalize} there are the following holidays:"
    holidays_hash.each do |holiday_name, supplies|
      puts "-#{holiday_name.upcase}. For which you will need:"
        supplies.each do |supply|
          puts "--#{supply}"
        end
    end
  end
end

def every_supply_alt(list)
# this one has closer to the proper output format. I noticed this detail late.
# still missing the Oxford comma detail, but trying to complete it quickly - 
# finishing moving apartments tonight.

  list.each do |season, holidays_hash|
    # in season there are:
    puts "#{season.to_s.capitalize}:"
    holidays_hash.each do |holiday_name, supplies|
      print "  #{holiday_name.capitalize}: "
        i = 1
        supplies.each do |supply|
          if supplies.length == i
            puts "and #{supply}."
          else
            print "#{supply}, "
          end
          i += 1
        end
    end
  end
end

