class Greeting
  attr_accessor :names

  #initialize is like constructor
  def initialize(names = "World")
    @names = names
  end

  def hello
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each") #each is included in names
      #loop
      @names.each do |name|
        puts "Hi #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end

  def bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      @names.each do |name|
        puts "Good bye #{name}!"
      end
    else
      puts "See you #{@names}"
    end
  end
end

if __FILE__ == $0
  mg = Greeting.new #mg is an object
  mg.hello
  mg.bye

  mg.names = "John"
  mg.hello
  mg.bye

  #names can be any types
  mg.names = ["Keagen","Pyush","Yi-fan"]
  mg.hello
  mg.bye

  #nil
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