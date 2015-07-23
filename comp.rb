# Practice with Ruby Classes
# Computer Class
# Will save return usernames
# From Codecademy.com, Virtual Computer section - https://www.codecademy.com/



class Computer
  @@users = {}

  def initialize(username, password)
  	@username = username
  	@password = password
  	@@users[username] = password
  	@files = {}
  end

  def create(filename)
  	time = Time.now
  	@files[filename] = time
  	puts "#{filename} was created by #{@username} at #{time}"
  end

  def Computer.get_users
  	@@users
  end
end


my_pc = Computer.new("john78", "password3")
my_pc.create("ruby class practice.rb")

puts "Users: #{Computer.get_users}"