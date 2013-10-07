# Write a method that returns whether a given letter is a vowel, using if and elsif

def if_is_vowel?(letter)
  if letter == "a"
    true
  elsif letter == "e"
    true
  elsif letter == "i"
    true
  elsif letter == "o"
    true
  elsif letter == "u"
    true
  else
    false
  end
end

# Write a method that returns whether a given letter is a vowel, using case

def case_is_vowel?(letter)
  case letter
  when "a"
    true
  when "e"
    true
  when "i"
    true
  when "o"
    true
  when "u"
    true
  else
    false
  end
end

# Write a method that returns whether a given letter is a vowel, 
# using if with no else, all on a single line

def one_line_vowel(letter)
  true if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"
end

# Write a method that returns whether a given letter is a vowel 
# without using if or case while all on a single line

def include_vowel(letter)
  "aeiou".include? letter
end

# Write a method that returns whether a given letter is a vowel 
# without checking equality, or the use of if, using the array of vowels

def no_equality_vowels(letter)
  vowels = ['a','e','i','o','u']
  vowels.include?(letter)
end

# Write a method that will evaluate a string and return the first vowel 
# found in the string, if any

def first_vowel(string)
  string.match(/a|e|i|o|u/).to_s
end

# Write a method that will evaluate a string and return the 
# ordinal position (index) of the string where the first vowel is found, if any

def index_vowel(string)
  string.index(/[aeiou]/)
end