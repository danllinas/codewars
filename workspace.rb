# class Array #Working with blocks, lamdas, and method blocks.
#   def iterate!(code)
#     self.each_with_index do |n, i|
#       self[i] = code.call(n)
#     end
#   end
# end
#
# def square(n)
#   n**2
# end
#
# array = [1, 2, 3, 4]
#
# array.iterate!(method(:square))
#
# p array
#
# p method(:square).class


##multiples of 3 & 5
# def multiples
#   results = []
#   1000.times do |x|
#     if x % 3 == 0 || x % 5 == 0
#       results << x
#     end
#   end
#   results.reduce(:+)
# end
#
# p multiples

##Even Fibonacci numbers
def fibonacci
  array = (1..1000000).to_a
  results = []
  array.each_with_index do |x, i|
    if x == 0 || x == 1
      results << x
    else
      results << (array[i] + array[i + 1])
    end
  end
  even_results = []
  results.each do |x|
    if x % 2 == 0
      even_results << x
    end
  end
  even_results.reduce(:+)
end

p fibonacci
