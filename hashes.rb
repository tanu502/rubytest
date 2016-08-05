

# Hashes

editor_props = {"font"=>"Arial",
				"size"=>12,
				"color"=>"red"}

puts editor_props.length
# 3
puts editor_props["font"]
# Arial

editor_props["bachground"]="Blue"

editor_props.each_pair do | key, value|
	puts "Key: #{key} value: #{value}"
end
# Key: font value: Arial
# Key: size value: 12
# Key: color value: red
# Key: bachground value: Blue

p "<===========================>"
word_frequency = Hash.new(0)

sentence = "Chicka boom chicka boom1 boom"

sentence.split.each do | word |
	p word
	word_frequency[word.downcase] +=1
end

p word_frequency