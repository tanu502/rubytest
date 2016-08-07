require 'httparty'
require 'pp'

module GreeterHelper
	def formatted_time(time)
		#time string in AM/PM format
		time.strftime("%I:%M%p")
	end
end
 