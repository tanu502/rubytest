
class ClassInheritance
	def to_s
		"Dog"
	end
	def bark
		"barks loudly"
	end
end

class SmallDog < ClassInheritance
	def bark
		"barks quietly"
	end
end

dog = ClassInheritance.new
small_dog = SmallDog.new

puts "#{dog}1 #{dog.bark}"
puts "#{small_dog}2 #{small_dog.bark}"