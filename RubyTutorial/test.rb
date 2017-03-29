=begin
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

def blockTest
  puts "Called in a method"
  yield
  puts "Called in a method"
  yield
end

blockTest{(puts "Called in a block")}

#$LOAD_PATH << "."  creates file path
require "./trig.rb"
y = Trig.sin(Trig::PI/4)
puts "#{y}"


require "./support.rb"

class Decade
  include Week
  no_of_yrs=10
  def no_of_months
    puts Week::FIRST_DAY
    number=10*12
    puts number
  end
end
d1=Decade.new
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
d1.no_of_months

#initialize array
name = Array.new(5) {|i| i+=1}
#another way to initialize
arr = Array[1,5,3,2,4]
#another way
arr2 = Array(0..9)
puts "name array = #{name}"
puts "arr array = #{arr}"
puts "arr array = #{arr2}"

#one way to initialize
H = Hash["a" => 100, "b" => 200]
puts "#{H["a"]}"
puts "#{H["b"]}"

#another way
h2 = Hash.new
h2 = {"a" => 10, "b" => 20}
puts "#{h2["a"]}"
puts "#{h2["b"]}"
puts "#{h2.keys}"

puts "Enter a value: "
val = gets
puts "The input was #{val}"

arr = IO.readlines("input.txt")
puts arr[0]
puts arr[1]

puts "\nUsing for each:"
IO.foreach("input.txt"){|i| puts i}

=end

#exception
begin
aFile = File.new("inpu.txt", "r+")
if aFile
  puts "File is found"
end
rescue
  puts "File is not found"
end
