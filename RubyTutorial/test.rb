
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
print "\n"

age = 23
case age
  when 5..10
    puts "upto 10"
  when 11..20
    puts "upto 20"
  when 21..25
    puts "upto 25"
end
$i = 1
$num = 5
while $i<=$num
  puts "i is #$i"
  $i +=1;
end

for j in 0..5
  puts "j = #{j}"
end