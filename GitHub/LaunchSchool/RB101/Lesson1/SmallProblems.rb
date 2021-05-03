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

=end
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