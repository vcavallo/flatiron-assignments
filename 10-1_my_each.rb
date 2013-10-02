def my_each(array)
  i = 0
  while i < array.length
    yield(array[i])
    i += 1
  end
end

array = ["avi", "scott", "spencer"]

my_each(array) do |i|
  puts "I am #{i}"
end

def do_3_times
  yield
  yield
end

do_3_times do
  puts "a time"
end