def max(number_1, number_2)
  if number_1 > number_2
    number_1
  elsif number_1 < number_2
    number_2
  elsif number_1 = number_2
    number_1
  end
end

def test
  puts max(2,3) == 3
  puts max(3, 3)
  # # puts max(nil,1)
  # puts max(1.1,100) == 100
  # puts max(99999999999999999,4)
  # puts max(true, 0)
  # puts max({},4)
  # puts max(4,[])
  # p max([],5)
  # p max([1,2,3],5)
  # puts max("","")
end
test()
