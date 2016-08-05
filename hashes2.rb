

# Hashes

family_tree_19 = {oldest: "jim", older: "Joe", younger: "Jack"}
family_tree_19[:youngest]="Jeremy"

p family_tree_19
# {:oldest=>"jim", :older=>"Joe", :younger=>"Jack", :youngest=>"Jeremy"}


def adjust_colors (props = {foregroung: "red",background: "white"})
	puts "Foregroung: #{props[:foregroung]}" if props[:foregroung]
	puts "Background: #{props[:background]}" if props[:background]
end

adjust_colors
# Foregroung: red
# Background: white
adjust_colors ({:foregroung => "green"})	# Foregroung: green
adjust_colors  background: "yella"			# Background: yella
adjust_colors :background => "magenta"		# Background: magenta
