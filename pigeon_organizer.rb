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

color = pigeon_data[:color]
gender = pigeon_data[:gender]
lives =  pigeon_data[:lives]

attributes = [color,gender,lives]
all_pigeon_names = ["Theo", "Peter Jr.", "Lucky", "Ms .K", "Queenie", "Andrew", "Alex"]

pigeon_list= {}

def get_attribute_by_pigeon(attribute, pigeon)
  results = attribute.collect do |value, pigeons_array|
    if pigeons_array.include? (pigeon)
      value
    end
  end
  results.compact
end

def assign_feature_to_pigeon(list, pigeon, attribute, value)
  if list[pigeon] != nil
    list[pigeon] = list[pigeon].merge(attribute => value)
  else
    list[pigeon] = {attribute => value}
  end
end
# when this is called, I nest in the get_attribute_by_pigeon() function,
# which feels sort of repetitive but I can't exactly figure out the fix.

def set_all_colors(all_pigeon_names, pigeon_list, color)
  all_pigeon_names.each do |name|
    assign_feature_to_pigeon(pigeon_list, name, :color, get_attribute_by_pigeon(color, name))
  end
end

def set_all_genders(all_pigeon_names, pigeon_list, gender)
  all_pigeon_names.each do |name|
    assign_feature_to_pigeon(pigeon_list, name, :gender, get_attribute_by_pigeon(gender, name))
  end
end

def set_all_lives(all_pigeon_names, pigeon_list, lives)
  all_pigeon_names.each do |name|
    assign_feature_to_pigeon(pigeon_list, name, :lives, get_attribute_by_pigeon(lives, name))
  end
end

set_all_colors(all_pigeon_names, pigeon_list, color)
set_all_genders(all_pigeon_names, pigeon_list, gender)
set_all_lives(all_pigeon_names, pigeon_list, lives)

# I tried to do a set_all_attributes but couldn't get it working in time.

p pigeon_list

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