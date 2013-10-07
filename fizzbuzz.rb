# assignment.rb

# FizzBuzz - The Programmer's Stairway to Heaven
# Define the fizzbuzz method to do the following: 10pts
  # Use the modulo % method (divisible by)
    # 2 % 2 #=> true
    # 1 % 2 #=> false
  # If a number is divisible by 3, puts "Fizz".
  # If a number is divisible by 5, puts "Buzz".
  # If a number is divisible by 3 and 5, puts "FizzBuzz"
    # Use if statements 2pts
    # Use the && operator 3pts

# Write a loop that will group the numbers from 1 through 50
# by whether they fizz, buzz, or fizzbuzz - 10pts

def fizzbuzz(number)
  if number % 3 == 0 && number % 5 == 0
    puts "FizzBuzz"
  elsif number % 3 == 0
    puts "Fizz"
    "FizzBuzz"
  elsif number % 5 == 0
    puts "Buzz"
  # originally had `else puts number`. 
  # removed because this isn't in instructions.
  end
end

# FizzBuzzin' 1-50 for fun...

for x in 1..50 do
  fizzbuzz(x)
end

# now the grouping loop. writing another version of this
# that doens't `puts` but only returns.

def fizzbuzz_group(number)
  if number % 3 == 0 && number % 5 == 0
    "FizzBuzz"
  elsif number % 3 == 0
    "Fizz"
  elsif number % 5 == 0
    "Buzz"
  end
end

fizzers = []
buzzers = []
fizzbuzzers = []

for x in 1..50
  fizzers << x if fizzbuzz_group(x) == "Fizz"
  buzzers << x if fizzbuzz_group(x) == "Buzz"
  fizzbuzzers << x if fizzbuzz_group(x) == "FizzBuzz"
end


# alternatively with strings...

fizzers = ""
buzzers = ""
fizzbuzzers = ""

for x in 1..50
  fizzers += " #{x}" if fizzbuzz_group(x) == "Fizz"
  buzzers += " #{x}" if fizzbuzz_group(x) == "Buzz"
  fizzbuzzers += " #{x}" if fizzbuzz_group(x) == "FizzBuzz"
end

p fizzers
p buzzers
p fizzbuzzers
