# Practice with Ruby Classes
# Computer Class
# Will save return usernames
# From Codecademy.com, Virtual Computer section - https://www.codecademy.com/



class Machine
  @@users = {}

  def initialize(username, password)
  	@username = username
  	@password = password
  	@@users[username] = password
  	@files = {}
  end

  