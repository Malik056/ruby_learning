a = [1, 'center', 2, 3]
puts "ARRAY"
puts a
puts "MAP"
mappedA = a.map { |element| element.class }
puts mappedA

puts "SELECT"
selectedIntegers = mappedA.select {|element| element.to_s == "Integer"}
puts selectedIntegers

puts "UNIQ"
integers = mappedA.uniq
puts integers

puts "SELECT"
number = a.select do |element|
  element.class.to_s == "Integer"
end