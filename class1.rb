def sum(a, b)
    a + b
end

puts sum(3,4)
puts sum("cat","dog")


a = [2,3,4,5,6,7]
b = a.map do
    |element| 
    element.class
end

puts b
puts "PUTTING C"
puts "PUTTING C"
puts "PUTTING C"
c = a.map &:to_s
puts c




module ModA
    def log
        puts "Logging in methods"
    end
end

module ModB
    def log
        puts "Logging in methods ModB"
    end
end

class A
    extend ModA
    include ModA
    include ModB
end

puts A.ancestors

variable = A.new
A.log
variable.log