########################
# NYC PIGEON ORGANIZER #
########################

# Start with the following collected data on NYC pigeons.

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms .K"],
    :white => ["Queenie", "Andrew", "Ms .K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms .K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms .K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

# Plans:
# create a hash for each pigeon with the appropriate keys
##  
# iterate through each attribute hash, taking note of which attr you're on*
## in each value, check the array for a given pigeon
# if he's there, add the key name to the pigeon's attr in line with *

color = pigeon_data[:color]
gender = pigeon_data[:gender]
lives =  pigeon_data[:lives]

pigeon_list= {}

# colors.each do |color, pigeons_array|
#   if pigeons_array.include? ("Theo")
#     puts "we found Theo in #{color}"
#   end
# end

  # more general iterator might be helpful:

def get_attribute_by_pigeon(attribute, pigeon)
  results = attribute.collect do |value, pigeons_array|
    if pigeons_array.include? (pigeon)
      value
    end
  end
  results.compact
end

get_attribute_by_pigeon(color, "Theo")

def assign_feature_to_pigeon(list, pigeon, attribute, value)
  if list[pigeon] != nil
    list[pigeon] = list[pigeon].merge(attribute => value)
  else
    list[pigeon] = {attribute => value}
  end
end
# when this is called, I nest in the get_attribute_by_pigeon() function,
# which feels sort of repetitive but I can't exactly figure out the fix.

assign_feature_to_pigeon(pigeon_list, "Theo", :color, get_attribute_by_pigeon(color, "Theo"))
assign_feature_to_pigeon(pigeon_list, "Theo", :gender, get_attribute_by_pigeon(gender, "Theo"))
assign_feature_to_pigeon(pigeon_list, "Theo", :lives, get_attribute_by_pigeon(lives, "Theo"))


p pigeon_list

# test_list = {"Theo" => {color: "green"}}
# test_list2 = {"Theo" => {:gender => "Male"}}
# test_list["Theo"] = test_list["Theo"].merge(test_list2["Theo"]) 
# assign_feature_to_pigeon(test_list, "Theo", :gender, "Male")
# p test_list


# Iterate over the hash above collecting each pigeon by name and rebuild it into the hash below 
# that displays the individual attributes of each bird.

# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => "male",
#     :lives => "Subway"
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => "male",
#     :lives => "Library"
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => "male",
#     :lives => "City Hall"
#   },
#   "Ms .K" => {
#     :color => ["grey", "white"],
#     :gender => "female",
#     :lives => "Central Park"
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => "female",
#     :lives => "Subway"
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => "male",
#     :lives => "Central Park"
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => "male",
#     :lives => "Central Park"
#   }
# }