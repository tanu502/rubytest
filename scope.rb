v1 = "outside"

class MyClass
	def my_method
		v1 = "inside"
		p v1
		p local_variables
	end
end

p v1 
#"outside"
obj = MyClass.new
obj.my_method #"inside"

p local_variables
# [:v1, :obj]

p self
# main

p "<==============================>"

module MyModule
	MyConstant = "Outer Constant"
	class MyClass2
		puts MyConstant
		MyConstant = 'Inner Constant'
		puts MyConstant
	end
	puts MyConstant
end