#sums the absolute value of the digits
# def sumDigits(number)
#   number = number.to_s.tr("-", "").split("")
#   number.map!(&:to_i)
#   total = 0
#   number.each do |digits|
#     total += digits
#   end
#   return total
# end
#Better answer used reduce(:+)

#sort a list of words inside a string by the nth character
# def sort_it(list_, n)
#   words = list_.split(", ")
#   words = words.sort_by {|word| word[n-1]}
#   words = words.join(", ")
# end
##The ideal solution:
# def sort_it(list_, n)
#   list_.split(", ").sort_by{|w| w[n-1]}.join(", ")
# end

#are the two numbers vampire numbers?
# def vampire_test(a,b)
#   num = (a * b).to_s.split("").sort!
#   test = (a.to_s + b.to_s).split("").sort!
#   if num === test
#     true
#   else
#     false
#   end
# end
#
# vampire_test(21, 6)

# test = [1, 3, 4, 7, 1, 3]
# def length_of_sequence(arr,n)
#   p arr.find_index(n)
#
# end
#
# length_of_sequence(test, 1)

#random dice roll - got this one fast!!
# def dice(minimum, maximum)
#   (minimum..maximum).to_a.shuffle.shift
# end

# p dice(1, 6)


# def find_missing_number(sequence)
#   if sequence == ""
#     return 0
#   end
#   sequence = sequence.split(' ').sort.map(&:to_i)
#   foil = (sequence.min..sequence.max).to_a
#   if sequence[0] != 1
#     1
#   elsif (foil - sequence) == []
#     0
#   else
#     (foil - sequence).join.to_i
#   end
# end
#
# p find_missing_number("6 1 2 4 7 8 5 3")



#converting boolean to a string
# def boolean_to_string(b)
#   p b
#   if b == true
#     "true"
#   else
#     "false"
#   end
# end
#
# puts boolean_to_string(false)

#using the reduce method
# def reduce list, &block
#   list.reduce do
#     yeild
#   end
# end



####
#fizz-buzz with negative ranges.
####
# def getNumber(number)
#   if number % 3 == 0 && number % 5 == 0
#     'BOTH'
#   elsif number % 3 == 0
#     'THREE'
#   elsif number % 5 == 0
#     'FIVE'
#   else
#     number
#   end
# end
#
# def getNumberRange(first, last)
#   if first < last
#     list = (first..last).to_a
#     list.map! do |x|
#       getNumber(x)
#     end
#   else
#     list = (last..first).to_a
#     list.map! do |x|
#       getNumber(x)
#     end
#     list.reverse!
#   end
#   list
# end


####
#Create a method map that accepts a list and a block, runs the block for each item in the list, and returns a new array with the block return values.
####
# num = [3, 5, 2, 1, 9, 7]
#
# def map list, &block
#   list.map do |x|
#     yield x
#   end
# end
#
# p map num, &:even?
##
#Strong Response:
# def map list, &block
#   list.map(&block)
# end
# list = [3, 5, 2, 1, 9, 7]
# p map list, &:even?


#####
##getting practice with blocks.
#####

# def variable &block
#   puts "Here goes:"
#   case block.arity
#   when 0
#     yield
#   when 1
#     yield "one"
#   when 2
#     yield "one", "two"
#   when 3
#     yield 'one', 'two', 'three'
#   end
#   puts 'done'
# end
#
# variable {|x, y, z| puts x, y, z}

#####
# Given two strings representing positive integers, such as "12" and "35", return a string containing their product.
#####

# def multiplyMyNumbers(a, b)
#   String(Integer(a) * Integer(b))
# end
#
# p multiplyMyNumbers('5', '1')


###
#Calculate if building is safe.
###
# def strong_enough( earthquake, age )
#   building = 1000 * (1 - 0.01)**age
#   quake = 1
#   earthquake.each do |x|
#     sums = 0
#     x.each do |y|
#       sums += y
#     end
#     quake *= sums
#   end
#   building > quake ? "Safe!" : "Needs Reinforcement!"
# end
#
# p strong_enough([[2,3,1],[3,1,1,],[1,1,2]], 2)
# p strong_enough([[5,8,7],[3,3,1],[4,1,2]], 2)
# p strong_enough([[5,8,7],[3,3,1],[4,1,2]], 3)

####Playing with reduce. This would have worked for the previous exercise.
# test = [[2,3,1],[3,1,1,],[1,1,2]]
# test.map! do |x|
#   x.reduce(:+)
# end
# p test
# p test.reduce(:*)

#####Pattern: output odd digits that digit number of times.
# def pattern n
#   return '' if n <= 0
#   array = []
#   (1..n).to_a.each do |num|
#     array << "#{num}" * num if num.odd?
#   end
#   array.join("\n")
# end
# puts pattern 13
##########################

###########Make a person class that returns a greeting.
# class Person
#   attr_accessor :first_name, :last_name
#
#   def initialize(first, last)
#     @first_name = first
#     @last_name = last
#   end
#
#   def greet
#     return "Hello, #{@first_name} #{@last_name}!"
#   end
#
# end
#
# person = Person.new("Bob", "Smith")
# p person.greet
########################

###############
###Method that takes a list and block and returns items as long as block is true.
###############
# list = [0,1,2,3,5,8,13]
# def drop_while list, &block
#   list.drop_while(&block)
# end
#
# p drop_while(list){ |item| item < 3 }
###############

p "Danny".respond_to? 'map'
