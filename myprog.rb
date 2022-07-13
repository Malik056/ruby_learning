# def say_goodnight(name)
#     result = "Good night, " + name
#     return result
# end

# def say_goodnight(name)
#     # result = "Good night, #{name}"
#     result = "Good night, #{name.capitalize}"
#     return result
# end

def say_goodnight(name)
    "Good night, #{name.capitalize}"
end


puts "Hello, Ruby Programmer"
puts "It is now #{Time.now}"
puts "gin joint".length
puts "Rick".index("c")
puts 42.even?
# puts sam.play(song)
num = -1234 # => -1234
positive = num.abs # => 1234

puts say_goodnight("John-Boy")
puts say_goodnight("Mary-Ellen")

puts say_goodnight("John-Boy")
puts(say_goodnight("John-Boy"))

#ARRAYS AND HASHES

a = [ 1, 'cat', 3.14 ] # array with three elements
puts "The first element is #{a[0]}" # set the third element
a[2] = nil
puts "The array is now #{a.inspect}"


a = [ 'ant', 'bee', 'cat', 'dog', 'elk' ]
a[0] # => "ant"
a[3] # => "dog"
# this is the same:
a = %w{ ant bee cat dog elk }
a[0] # => "ant"
a[3] # => "dog"

a = %w{ ant\ dog cat}
puts a.inspect


inst_section = {
'cello' => 'string',
'clarinet' => 'woodwind',
'drum' => 'percussion',
'oboe' => 'woodwind',
'trumpet' => 'brass',
'violin' => 'string'
}

p inst_section['oboe']
p inst_section['cello']
p inst_section['bassoon']


histogram = Hash.new(0) # The default value is zero
histogram['ruby'] # => 0
histogram['ruby'] = histogram['ruby'] + 1
histogram['ruby'] # => 1

#SYMBOL

NORTH = 1
EAST = 2
SOUTH = 3
WEST = 4

# walk(NORTH)
# look(EAST)

# walk(:north)
# look(:east)


def walk(direction)
    if direction == :north
    # ...
    end
end


inst_section = {
    :cello => 'string',
    :clarinet => 'woodwind',
    :drum => 'percussion',
    :oboe => 'woodwind',
    :trumpet => 'brass',
    :violin => 'string'
}

inst_section[:oboe] # => "woodwind"
inst_section[:cello] # => "string"
# Note that strings aren't the same as symbols...
inst_section['cello'] # => nil


inst_section = {
    cello: 'string',
    clarinet: 'woodwind',
    drum: 'percussion',
    oboe: 'woodwind',
    trumpet: 'brass',
    violin: 'string'
}

puts "An oboe is a #{inst_section[:oboe]} instrument"


#Control Statements

today = Time.now
if today.saturday?
    puts "Do chores around the house"
elsif today.sunday?
    puts "Relax"
else
    puts "Go to work"
end


radiation  = 12322

if radiation > 3000
    puts "Danger, Will Robinson"
end

puts "Danger, Will Robinson" if radiation > 3000


square = 4
while square < 1000
    square = square*square
end

square = 4
square = square*square while square < 1000



#Regular Expressions

regex = /Perl|Python/
patt2 = /P(erl|ython)/
/\d\d:\d\d:\d\d/ # a time such as 12:34:56
/Perl.*Python/ # Perl, zero or more other chars, then Python
/Perl Python/ # Perl, a space, and Python
/Perl *Python/ # Perl, zero or more spaces, and Python
/Perl +Python/ # Perl, one or more spaces, and Python
/Perl\s+Python/ # Perl, whitespace characters, then Python
/Ruby (Perl|Python)/ # Ruby, a space, and either Perl or Python

line = gets
if line =~ /Perl|Python/
    puts "Scripting language mentioned: #{line}"
end

line = gets
newline = line.sub(/Perl/, 'Ruby') # replace first 'Perl' with 'Ruby'
newerline = newline.gsub(/Python/, 'Ruby') # replace every 'Python' with 'Ruby'


def call_block
    puts "Start of method"
    yield
    yield
    puts "End of method"
end

call_block { puts "In the block" }
call_block do
    puts "In the block"
end

animals = %w( ant bee cat dog ) # create an array
animals.each {|animal| puts animal } # iterate over the contents