class Meeting
  attr_accessor :names

  def initialize(names="World")
    @names = names
  end

  def hello
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("even")
      puts "Hi #{@names}!"
    else
      puts "Hello #{@names}!"
    end
  end

  def bye
    if @names.nil?
      puts "..."
    else
      puts "Bye #{@names}!"
    end
  end
end

if __FILE__ == $0
  mg = Meeting.new
  mg.hello
  mg.bye

  mg.names = "Keaton"
  mg.hello
  mg.bye

  mg.names = nil
  mg.hello
  mg.bye
end


#What I found
#There is no data type
#No semi-colon
#nil is like 0
#names.nil? is like if(names == null)
#initialize is called when object is created
#attr_accesstor makes instant variables
#object is created by something = className.new
#@ is used for variables??
#elsif is used instead of else if
#for loop is challenging
#No need to use i for iterating
#@names.each do creates loop
#|name| contains the value of each index
#method can take many variables
#unless, until are weired to me.
#