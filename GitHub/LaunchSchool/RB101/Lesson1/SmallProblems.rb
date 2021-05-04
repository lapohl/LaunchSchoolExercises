=begin
require 'date'

puts Date.civil
puts Date.civil(2016)
puts Date.civil(2016, 5)
puts Date.civil(2016, 5, 13)


def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

a = [1, 4, 8, 11, 15, 19]
puts a.bsearch{|x| x > 8}


a = %w(a b c d e)
#puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }


5.step(to: 10, by: 3) { |value| puts value }

a = [5, 9, 3, 11]
puts a.sort.take(2)


require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
#EASY1

def repeat(word, number)
  number.times do
    puts word
  end
end

repeat('Hello', 3)


def is_odd?(int_input)
  if (int_input % 2) == 0
    return false
  else return true
  end
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true



def digit_list2(pos_int_input)
  i = 0
  input_string = pos_int_input.to_s
  return_array = []
  while i < input_string.length
    return_array.push(input_string[i].to_i)
    i += 1
  end
  return_array
end

def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true


def count_occurrences(vehicle_array)
  counts = {}
  vehicle_array = vehicle_array.map {|word| word.downcase}
  vehicle_array.uniq.each {|type| counts[type] = vehicle_array.count(type)}
  return counts
end

vehicles = [
  'car', 'car', 'trUck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'CAR', 'truck'
]

 test_has = count_occurrences(vehicles)
 puts test_has


def reverse_sentence(input_string)
  words_array = input_string.split.reverse.join(" ")
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'


def reverse_words(input_words_string)
  words_output = []
  input_words_string.split.each do |word| 
    word.reverse! if word.length > 4
    words_output << word
  end
  words_output.join(' ')
end
=begin
def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS


def stringy(int_input, starter = 1)
  if starter == 1
    return '10' * (int_input / 2) if int_input % 2 == 0
    return '10' * (int_input / 2) + '1'
  else
    return '01' * (int_input / 2) if int_input % 2 == 0
    return '01' * (int_input / 2) + '0'
  end
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(7, 0) == '0101010'


def average(input_array)
  sum = 0
  input_array.each {|element| sum += element}
  sum.to_f / input_array.size.to_f
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40


def sum(num_input)
  sum = 0
  num_input.to_s.chars.each {|number_string| sum += number_string.to_i}
  sum
end

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45


def calculate_bonus(salary, bool)
  return 0.5 * salary if bool
  0
end

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000


def age(name = 'Teddy')
  age_rand = rand(20..200)
  puts "#{name} is #{age_rand} years old!"
end

age('LP')


def area()
  puts 'Enter length'
  length_input = gets.chomp.to_f

  puts 'Enter width'
  width_input = gets.chomp.to_f

  puts "The area of the room is #{width_input * length_input} square meters (#{width_input * length_input*10.7639} square feet)."
end

area()


def tip_calc()
  puts "Enter bill amount."
  bill_input = gets.chomp.to_f

  puts "Enter tip % amount."
  tip = (gets.chomp.to_f) * 0.01

  puts "The tip is $#{(tip * bill_input).round(2)}."
  puts "The total is #{((1+ tip) * bill_input).round(2)}."
end

tip_calc()


def retirement()
  now_year = Time.now.year

  puts "What's your age?"
  current_age = gets.chomp.to_i

  puts "What age do you want to retire?"
  retire_age = gets.chomp.to_i

  puts "It's #{now_year}. You will retire in #{now_year + (retire_age - current_age)}, in #{(retire_age - current_age)} years. "
end

retirement()


def name_call(name)
  name.include?('!') ? puts("HELLO #{name.chop!.upcase}. WHY ARE WE SCREAMING?") : puts("Hello #{name}.")
end

name_call('Bob!')


(1..99).to_a.each {|number| puts number if number % 2 != 0}

  
puts "Please enter an integer greater than 0:"
int_input = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
ops_input = gets.chomp.to_s.downcase

def sum(integer)
  sum = 0
  1.upto(integer) {|number| sum += number}
  sum
end

def prod(integer)
  prod = 1
  1.upto(integer) {|number| prod *= number}
  prod
end

ops_input == 's' ? 
puts("The sum of the integers between 1 and #{int_input} is #{sum(int_input)}") :
puts("The product of the integers between 1 and #{int_input} is #{prod(int_input)}") 

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name


array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2


#EASY3

num_ints = 6
num_array = []
i = 0
num_collector = while i < num_ints
                  puts "Enter number:"
                  num_array << gets.chomp.to_i
                  i += 1
                end
num_array[0..-2].include?(num_array[-1]) ? puts("The last number #{num_array[-1]} appears in the first five numbers.") : puts("The last number #{num_array[-1]} is not in the first five numbers.")


def string_lengths(sentence)
  strings = sentence.split
  strings.map { |chars| chars.length }
end

def string_lengths(sentence)
  strings = sentence.split
  lengths = []

  strings.each do |string|
    lengths << string.size
  end
end

def string_lengths(sentence)
  words = sentence.split
  word_lengths = []
  counter = 0

  while counter < words.size do
    word_lengths << words[counter].length
    counter += 1
  end

  word_lengths
end


def string_lengths(sentence)
  strings = sentence.split
  lengths = []
  counter = 1

  until counter == strings.size do
    word_length = strings[counter - 1].length
    lengths.push(word_length)
    counter += 1
  end

  lengths
end
puts string_lengths('To be or not to be')
=end