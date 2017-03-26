name = "Keisuke"

puts name
puts name.reverse
puts name.length

hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key,value|
  print key, " is ", value, "\n"
end

(10...15).each do |n|
  print n, ' '
end