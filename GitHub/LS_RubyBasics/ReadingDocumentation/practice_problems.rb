=begin
#VARIABLE SCOPE
p 'xyz'.upcase()


a = %w(a b c d e)
a.insert(3, 5, 6, 7)
p a


s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts s.split.inspect
puts s.split(',').inspect
puts s.split(',', 2).inspect


a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a


a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a


a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a


a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a


a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a


a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a


a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a


array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a


a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a
puts array


a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a

#LOOPS1


loop do
  puts 'Just keep printing...'
end


loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
  end
end

puts 'This is outside all loops.'


iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break
end


iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end


loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
end


loop do
  puts 'Should I stop looping?'
  answer = gets.chomp.downcase()
  break if answer == 'yes'
  puts 'Incorrect answer. Please answer "yes".'
end


say_hello = true
i = 0
while say_hello
  puts 'Hello!'
  i += 1
  if i > 4
    say_hello = false
  end
end


numbers = []
prng = Random.new
i = 0
while i < 5
  p prng.rand(1...99)
  i += 1
end


count = 1

until count == 11
  puts count
  count += 1
end


numbers = [7, 9, 13, 25, 18]
i = 0

 until i == numbers.length
  p numbers[i]
  i += 1
 end


for i in 1..100
  puts i if i % 2 == 0
end


friends = ['Sarah', 'John', 'Hannah', 'Dave']

for name in friends do
  p "Hello, #{name}!"
end


#LOOPS2 

count = 1

while count < 6
  p count
  if count.odd?
      p "Odd"
    else
      p "Even"
  end
  count += 1

end


count = 1

loop do 
  if count.odd?
    p "#{count} is odd."
  else
    p "#{count} is even."
  end

  break if count == 5
  count += 1
end


loop do
  number = rand(100)
  puts number
  break if number.between?(0,10)
end


process_the_loop = [true, false].sample
p process_the_loop
if process_the_loop 
  p "The loop was processed."

else
  p "The loop was not processed."

end


loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i

  if answer == 4
    p "That's correct!"
    break
  end
    p "Try again!"
end


numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers.push(input)

  if numbers.length == 5
    break
  end
end

puts numbers


names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  p names.shift
  if names.length == 0
    break
  end
end


5.times do |index|
  p index
  break if index == 2
end


number = 0

until number == 10
  number += 1
  next if number.odd?
  p number
end


number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  next if (number_a != 5) && (number_b != 5) 

  p "5 was reached."
  break

end


def greeting(num)
  i = 0
  while i < num
    puts 'Hello!'
    i += 1
  end
end

number_of_greetings = 2
greeting(number_of_greetings)


#USER INPUT


p "Type something"
input = gets.chomp
p input


p "type age in years"

age_years = gets.chomp.to_i
age_months = age_years * 12
p age_months


p "do you want to print something?"
input_first = gets.chomp.downcase()
if input_first == 'yes'
  p "what do you want to print"
  input_second = gets.chomp
  p input_second
  end


p "do you want to put 'something'?"
input_first = gets.chomp.downcase
p 'something' if input_first == 'yes'


p "do you want to put 'something'?"
input_first = gets.chomp.downcase

if input_first == 'y'
  p 'something'
elsif input_first == 'n'
  break
else
  p 'Invalid input! Please enter y or n'
end


choice = nil
loop do
  puts '>> Do you want me to print something? (y/n)'
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice)
  puts '>> Invalid input! Please enter y or n'
end
puts 'something' if choice == 'y'

=end
