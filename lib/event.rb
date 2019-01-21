require "pry"
require "time"
#Time.parse("2010-10-31 12:00")
#blinding pry
class Event
   attr_accessor :start_date, :length, :title, :attendees 
   @@date = nil
   def initialize(start_date,length,title,attendees = [])
     @start_date = start_date
     @length = length
     @title = title
     @attendees = attendees
    @@date = Time.parse(start_date)
    puts "string start date change in time #{@@date}"
   end
   def aff
   	  puts "début : #{@start_date}, durréé : #{@length}, titre : #{@title}, participant : #{@attendees}"
   end
   def postpone_24
      
   	  @@date = @@date + 3600*24
   	  @start_date = @@date.to_s
   end
   def end_date
       date_end = @@date + (length*60)
       puts "the event is ending in #{date_end}"
   end
   def is_past
   	now = Time.now
   	if @@date < now
   		puts "the event is past"
   		return true
   	  else
   	  	puts "the event is not past"
   	  	return false
   	end
   end
   def is_future
  !self.is_past
  end
   def is_soon
   	date = Time.now
   	decalage = @@date - date
    puts decalage
   	if decalage <1800
   		puts "the event is soon"
   		return true
   	else "the event is not soon"
   		return false
   	end
   end

end 
binding.pry