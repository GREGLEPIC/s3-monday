require 'pry'
require 'time'

class Event
	attr_accessor :start_date, :length, :title, :attendees
	
	def initialize(time, length, title, user)
		@start_date = Time.parse(time)
		@length = length.to_i
		@title = title
		@attendees = user
	end

	def postpone_24h
		@start_date + (60*60*24)
	end

	def end_date
		@start_date + (@length*60*60)
	end

	def is_past
		if @start_date < Time.now
			true
		else
			false
		end
	end

	def is_future
		!self.is_past
	end

	def is_soon
		is_soon = 0
		if Time.now <= @start_date && Time.now >= @start_date - 60*30 
			true
		else
			false
		end
	end

	def to_s
		puts "
		Date : #{@start_date}
		Durée : #{@length}
		Titre : #{@title}
		Invités : #{@attendees}
		"
	end

end

#binding.pry
#puts "end of files"