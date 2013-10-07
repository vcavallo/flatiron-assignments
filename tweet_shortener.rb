# "to, two, too" become '2' 
# "for, four" become '4'
# 'be' becomes 'b'
# 'you' becomes 'u'
# "at" becomes "@" 
# "and" becomes "&"

# 1. 
# "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

# 2. 
# "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?", "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."

# 3. 
# "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"


def shortener(string)
  words_to_shorten = {"to" => "2",
                      "two" => "2",
                      "too" => "2",
                      "four" => "4",
                      "for" => "4",
                      "be" => "b",
                      "you" => "u",
                      "at" => "@",
                      "and" => "&"

                    }
# ^^ THIS IS SO NOT DRY!

  # split_string = string.gsub(/[^0-9a-z ]/i, '').split(" ")
  split_string = string.split(" ")

  split_string.each do |original_word|
    if words_to_shorten.has_key?(original_word)
      original_word.gsub!(original_word, words_to_shorten[original_word])
    end
  end
  split_string.join(" ")

# I tried for a long time to anticipate and clean punctuation with
# `if words_to_shorten.has_key?(original_word.gsub(/[^0-9a-z ]/i, ''))`
# but i think it's more important i go to sleep.
# Also not working for capitalized letters. instead of adding them
# to the hash, I'd like to use .downcase in the each block, 
# but i'm getting a `can't convert nil into String` error I can't
# figure out tonight.

end

def shorten_tweets(tweets)
  tweets.each do |tweet|
    if tweet.length > 140
      puts shortener(tweet).slice(0, 140)
    end
  end
end

tweet_list = ["Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!",
              "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?", 
              "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real.",
              "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"]


shorten_tweets(tweet_list)



