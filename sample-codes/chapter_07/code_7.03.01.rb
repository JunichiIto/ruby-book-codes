User.new

# ----------------------------------------

class User
  def initialize
    puts 'Initialized.'
  end
end
User.new
#=> Initialized.

# ----------------------------------------

user = User.new
user.initialize #=> NoMethodError: private method `initialize' called for #<User:0x007fb18a321ca0>

# ----------------------------------------

class User
  def initialize(name, age)
    puts "name: #{name}, age: #{age}"
  end
end
User.new #=> ArgumentError: wrong number of arguments (given 0, expected 2)
User.new('Alice', 20) #=> name: Alice, age: 20
