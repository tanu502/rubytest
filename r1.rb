# def can(number)
# 	return false if number.zero?
# 	trun
# end
begin
File.foreach("test.txt")  do |line|  
	puts line.chomp
end
rescue  Exception => e
	# puts e.message
	puts "Let's pretend this didn' t happpen..."
end