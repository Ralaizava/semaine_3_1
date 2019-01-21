require "pry"
require "time"
class User
  attr_accessor :email, :name
  @@user_count = 0 # on initialise la variable de classe
  @@array_email = []
  @@array_name = []
  def initialize(email_to_save)
   puts "enter votre name : "
  	@name = gets.chomp.to_s
    @email = email_to_save
    @@user_count = @@user_count + 1
    @@array_email << @email
     @@array_name << @name
    
  end
  def self.list_mail
  	puts @@array_email
  end
  def self.count
    return @@user_count
  end
  def self.list_name
  	puts @@array_name
  end
end
binding.pry
puts "end of file"