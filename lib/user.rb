require 'pry'

class User
	attr_accessor :email
	@@user_list = []

	def initialize(email)
		@email = email
		@@user_list.push(email)
		p @@user_list
	end

	def self.all
    return @@user_list
  end

  def self.find_by_email(email)
  end

end

#binding.pry
#puts "end of file"