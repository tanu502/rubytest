class ClassMethodsVariablee

	def self.double(var)
		times_called
		var *2
	end

	class << self
		def times_called
			@@times_called ||= 0; @@times_called +=1
		end
	end
end

def ClassMethodsVariablee.triple(var)
	times_called; var * 3
end


puts ClassMethodsVariablee.double 5

puts ClassMethodsVariablee.triple 5

puts ClassMethodsVariablee.times_called