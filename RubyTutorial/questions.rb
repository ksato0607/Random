#Calculate area of circle
=begin
puts "This will calculate the area of circle"
puts "Type radius: "
radius = gets()

area = radius.to_i * radius.to_i * Math::PI
puts "The area of circle is #{area.round(2)}"
=end

#Calculate sum of array elements
=begin
arr = Array[1,2,3,4,5]
sum = 0
for i in arr
  sum += i
end
puts sum
=end

#Check for prime number
=begin
begin
print "Type an integer: "
num = Integer(gets()) rescue false
check = true

if(num)
  if(num==1 || num==2)
    puts "#{num} is a prime number"
  elsif(num==0)
    puts "#{num} is not a prime number"
  else
    for i in 2..num-1
      if(num%i==0)
        check = false
        puts "#{num} is not a prime number"
        break
      end
    end
    if(check)
      puts "#{num} is a prime number"
    end
  end
end
end while !num
=end

#Find duplicate character in a input string
puts "Find duplicated character"

#decimal to binary conversion
puts "Convert decimal to binary"