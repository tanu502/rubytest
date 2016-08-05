

class Person
	def initialize (name,age) #Constructor
		@name = name
		@age  = age
	end
	def get_info
		@additional	="Interestion"
		"Name: #{@name}, age: #{@age}"
	end

	def name
		@name
	end
	def name=(new_name)
		@name = new_name
	end
end

person1  = Person.new("Joe",14)

p person1.instance_variables

puts person1.get_info

p person1.instance_variables


p "<============================>"

puts person1.name

person1.name = "Mike"

puts person1.name
