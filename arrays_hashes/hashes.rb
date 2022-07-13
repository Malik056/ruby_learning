a = Hash[
  :key1 => "some number",
  :key2 => "some nubmer2",
  "key3" => "some number 3",
  2322 => "some number with key 2322",
]

puts a[:key1]
puts a[:key2]
puts a["key3"]
puts a[2322]
puts a[123]

a[123] = "abcd"

puts a[123]