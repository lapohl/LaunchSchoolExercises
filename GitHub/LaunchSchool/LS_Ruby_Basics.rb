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


def repeat(num)
  if num > 3 
    num.times do
      p 'Launch School is the best!'
    end
  else 
    p 'Need at least 3.'
  end
end

p "how many lines"
input = gets.chomp.to_i
repeat(input)
 

password = 'pword'
username = 'user'

loop do
  puts '>>Enter username'
  input_u = gets.chomp

  puts '>>Enter password'
  input_p = gets.chomp
  
  break if (input_p == password) && (input_u == username)
  puts '>>Invalid username and/or password!'
end

puts "Welcome!"


def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

loop do
  puts '>> Enter an integer'
  input_1 = gets.chomp

  puts '>>Enter another integer'
  input_2 = gets.chomp

  if valid_number?(input_1) && valid_number?(input_2)
    puts "#{input_1} / #{input_2} = #{input_1.to_f / input_2.to_f}"
    break
  end

  puts "both numbers must be integers, try again."
end



number_of_lines = nil
loop do
  puts '>> How many output lines do you want? Enter a number >= 3 (Enter Q to quit)'
  input = gets.chomp.downcase
  number_of_lines = input.to_i

  break if input == 'q'

  if number_of_lines < 3
    puts ">> That's not enough lines."
    
  else
    while number_of_lines > 0
      puts 'Launch School is the best!'
      number_of_lines -= 1
    end
  end

end


def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do
  puts "enter two integers; one positive and one negative"
  int1 = gets.chomp.to_i
  int2 = gets.chomp.to_i

  break if ((valid_number?(int1) && valid_number?(int2)) && ((int1 < 0 && int2 > 0) || (int2 < 0 && int1 > 0)) )

  puts "invalid input"
end

puts "#{int1} + #{int2} = #{int1 + int2}"

#METHODS


def print_me()
  puts "I'm printing within method!"
end

print_me()


def print_me
  return "I'm printing the return value!"
end

puts print_me


def hello
  'Hello'
end

def world
  'World'
end

puts "#{hello} #{world}"


def hello
  'Hello'
end

def world
  'World'
end

def greet
  return (hello + ' ' + world)
end

puts greet


def car(input1, input2)
  puts "#{input1} #{input2}"
end

car('toyota','cororlla')


def time_of_day(day_yesno)
  puts day_yesno
  if day_yesno
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end

daylight = [true, false].sample
time_of_day(daylight)


def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."


def assign_name(name = 'Bob')
  name
end

puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'


def add(int1, int2)
  int1 + int2
end

def multiply(int1, int2)
  int1 * int2
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36


names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(names_array)
  names_array.sample
end

def activity(acts_array)
  acts_array.sample
end

def sentence(name, activity)
  return "#{name} went #{activity} today!"
end

puts sentence(name(names), activity(activities))


def meal
  return 'Breakfast'
end

puts meal

def meal
  'Evening'
end

puts meal


def meal
  return 'Breakfast'
  'Dinner'
end

puts meal


def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal


def meal
  'Dinner'
  puts 'Dinner'
end

p meal


def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  7
end

puts count_sheep


def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep



def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep


def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number

#CONDITIONALS

sun = ['visible', 'hidden'].sample
p sun
p "The sun is so bright!" if sun == 'visible'


sun = ['visible', 'hidden'].sample
p "the clouds are blocking the sun!" unless sun == 'visible'


sun = ['visible', 'hidden'].sample
p "the sun is so bright!" if sun == 'visible'
p 'the clouds are blocking the sun' unless sun == 'visible'


boolean = [true, false].sample
boolean ? puts("I'm true" ): puts("I'm false")
#boolean ?  "I'm true2" :  "I'm false2"
p boolean


number = 7

if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number."
end


stoplight = ['green', 'yellow', 'red'].sample
p stoplight
case 
when stoplight == 'green'
  p "Go!"
when stoplight == 'yellow'
  p 'slow down'
when stoplight == 'red'
  p 'stop'
end


stoplight = ['green', 'yellow', 'red'].sample

if stoplight == 'green'
  p 'go'
elsif stoplight == 'yellow'
  p 'slow'
else
  p 'stop'
end


status = ['awake', 'tired'].sample

def tired(wakeyTF)
  if wakeyTF == 'awake'
    return 'be productive'
  end
  return 'go to sleep'
end
p status
p tired(status)


number = rand(10)

if number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end


stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'  then puts 'Go!' 
when 'yellow' then puts 'Slow down!' 
else               puts 'Stop!' 
end


#STRINGS

a = ''

puts "It\'s now 12 o\'clock."
puts 'It\'s now 12 o\'clock.'

name = 'Roger'
string = 'RoGer'
p name.downcase == string.downcase

name = 'DAVE'
p name.downcase == string.downcase


name = 'Elizabeth'

puts "Hello, #{name}!"


first_name = 'John'
last_name = 'Doe'
full_name = first_name + " " + last_name
p full_name

state = 'tExAs'
p state[0].upcase + state[1:].downcase

state = 'tExAs'
p state.capitalize!


alphabet = 'abcdefghijklmnopqrstuvwxyz'
puts alphabet.split('')

words = 'car human elephant airplane'
for word in words.split(' ')
  p "#{word}s"
end

words = 'car human elephant airplane'
words.split(' ').each do |word|
  p "#{word}s"
end


colors = 'blue pink yellow orange'

#'yellow' in colors.split(' ') ? puts(true) : puts(false)
#'purple' in colors.split(' ') ? puts(true) : puts(false)

p colors.split(' ').include?(' yellow ')
p colors.split(' ').include?('blue')
p colors.include?('purple')
=end
