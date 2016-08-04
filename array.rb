het_arr=[1,"two",:three]
puts het_arr
# two
# three
# day
arr_word = %w{ what a great day today! }
puts arr_word[-2]

puts "#{arr_word.first} - #{arr_word.last}"
# what - today!

p arr_word[-3,2]
# ["great", "day"]

p arr_word[2..4]
# ["great", "day", "today!"]

puts arr_word.join(',')
# what,a,great,day,today!