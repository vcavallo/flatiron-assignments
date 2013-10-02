
## movie collection by genre

movies = { 
  :horror => [
    "Friday the 13th",
    "Scream",
    "Scream 2",
    "Scream 3",
    "Legally Blonde"
    ],
  :comedy => [
    "Dumb and Dumber",
    "Meet the Parents",
    "Meet the Fuckers"
    ],
  :other => [
    "Charlie Bit Me",
    "That Ad I Skip on YouTube"
  ]
}

## recipes with ingredients 

recipes = {
  "soup" => [
    "water",
    "flavor",
    "floating things",
    "sinking things"
  ],
  "steak" => [
    "meat",
    "extra meat for guests",
    "meet your guests"
  ],
  "trouble" => [
    "horses",
    "alcohol",
    "buckets of jelly",
    "uneven surfaces"
  ]
}

## user profiles including favorite colors & 3 personal essays, 
## (essay_1, essay_2, essay_3)

user_profiles = {
  "tommy salami" => {
    :favorite_color => "boring blue",
    :personal_essays => [
      "essay_1", "essay_2", "essay_3"
    ]
  },
  "polly potatoes" => {
    :favorite_color => "elephant red",
    :personal_essays => [
      "essay_1", "essay_2", "essay_3"
    ]
  },
  "chuck the duck" => {
    :favorite_color => "white bread",
    :personal_essays => [
      "quack", "quack", "quack"
    ]
  }
}

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

## reverse each word in a sentence

def reverse_each_word(sentence)
  words = sentence.split(" ")
  
  result = words.map do |word|
    word.reverse
  end
  result.join(" ")
end





