pets = ["Scooby", "Duncan", "S"]
cats = ["dkjf", "djdj", "ss"]

def find_s(array)
  array.each do |x|
    if x.include? "S"
      p x
    end
  end
  return nil
end

puts find_s(pets)
puts find_s(cats)
