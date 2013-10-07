# Given this List of Songs, Construct Arrays by Artist and Album
# Hint: Make use of the split() String Method
# http://www.ruby-doc.org/core-1.9.3/String.html#method-i-split

# Simple Example of Data Parsing
songs = [
  "The Magnetic Fields - 69 Love Songs - Parades Go By",
  "The Magnetic Fields - Get Lost - Smoke and Mirrors",
  "Neutral Milk Hotel - In An Aeroplane Over the Sea - Holland 1945",
  "The Magnetic Fields - Get Lost - You, Me, and the Moon",
  "The Magnetic Fields - 69 Love Songs - The Book of Love",
  "Neutral Milk Hotel - In An Aeroplane Over the Sea - The King of Carrot Flowers"
]

# Your goal is to get it to print this list:

# Neutral Milk Hotel - In An Aeroplane Over the Sea - Holland 1945
# Neutral Milk Hotel - In An Aeroplane Over the Sea - The King of Carrot Flowers
# The Magnetic Fields - 69 Love Songs - Parades Go By
# The Magnetic Fields - 69 Love Songs - The Book of Love
# The Magnetic Fields - Get Lost - Smoke and Mirrors
# The Magnetic Fields - Get Lost - You, Me, and the Moon


# take the entire array
# split by - 
  # now there is a multidimensional array
  # go through the [x][0]s for artist name
  # the [x][1]s for album name
  # the [x][2]s for song name
# THEN WHAT?

mf_69ls = []
mf_gl = []
nmh_iaaots = []

songs.each do |song|
  if song.split(" - ")[0] == "The Magnetic Fields"
    # this gives all mf songs
    if song.split(" - ")[1] == "69 Love Songs"
      # this gives on 69 love songs
      mf_69ls << song
    else
      mf_gl << song
    end
  else
    nmh_iaaots << song
  end
end



magnetic_fields_sorted = [mf_69ls.sort, mf_gl.sort]
neutral_milk_sorted = [nmh_iaaots.sort]

full = [neutral_milk_sorted, magnetic_fields_sorted]

full.each do |song|
  puts song
end