stack = [] ; stack << "one"; stack.push("two")

puts stack.pop
# two

queue=[]; queue.push "one"; queue.push "two"
puts queue.shift
# one

a = [5,2,6,4,1,3].sort!.reverse!
p a
# [6, 5, 4, 3, 2, 1]

p a.sample(2)
# [2, 5]

a[7] =33
p a
# [6, 5, 4, 3, 2, 1, nil, 33]
puts "<============================>"

a.each do |single| 
	print single
	# puts 
end

puts "<============================>"
new_arr = a.select  {  | num | num > 4 } 

p new_arr