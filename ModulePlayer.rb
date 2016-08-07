class ModulePlayer
	attr_accessor :name,:age,:skill_level
	def initialize(name,age,skill_level)
		@name = name
		@age  = age
		@skill_level = skill_level	
	end

	def to_s
		puts "<#{name}: #{skill_level}(SL), #{age}(AGE)>"
	end

	# def each
	# 	@players.each { | player | yield player}
	# end

end