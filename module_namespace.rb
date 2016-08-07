module Sports
	class Match
		attr_accessor :score
	end
end

module Patterns
	class Match
		attr_accessor :complete
	end
end

match1 = Sports::Match.new
match1.score = 45
puts match1.score


match2 = Patterns::Match.new
match2.complete = true
match2.complete = false
match2.complete = 56
puts match2.complete