# data = File.open('test.txt').to_a

data = File.foreach('test.txt',"\n").to_a

# p data

groups = data.each_slice(3).to_a

groups.each do |d|

new_array = d.each_slice(3).to_a

p new_array

end

# matches = groups[0] & groups[1] & groups[3]
# p matches
# def position(letter)
#   letter.ord - 'a'.ord + 1
# end

# def a_position(letter)
#   letter.ord - 'A'.ord + 1
# end

# total_score = 0

# data.each do |d|
#   split_array = d.split("")
#   new_array = split_array.each_slice( (split_array.size/2.0).floor ).to_a
#   # p new_array[0]
#   # p new_array[1]
#   matches = new_array[0] & new_array[1]
#   # p matches
#   # new_array.each do |f|
#   #   p f
#   # end
#   matches.each do |m|
#     if m == m.capitalize
#       a_amount = matches.map do |char| a_position(char) +26 end
#       total_score += a_amount.join.to_f
#     else
#       amount = matches.map do |char| position(char) end
#         total_score += amount.join.to_f
#     end
#   end

#   # alphabet = ('a'..'z').to_a
#   # p matches.map { |d| alphabet.index(d) + 1 }
#   # matches.each do |l|
#   #   if l == alphabet.map
#   #     p matches.map { |d| alphabet.index(d) + 1 }
#   #   end
#   # end
#   # => ["A", "B", "C", "D", "E", ..., "Z"]
#   # matches.map { |d| alphabet.index(d) + 1 + plus }
#   # un = matches.map { |d| alphabet.index(d) + 1 }
#   # p un
# end

# p total_score
# # array1 = [2,3,4,5,6,7] #does not have repeated values[2,2,3] and the values are sorted
# # array2 = [2,5,7]

# # matches = array1 & array2
# #  => [2, 5, 7]

# #  puts data
# # p data

# # plus = 9
# # alphabet = ('A'..'Z').to_a
# # # => ["A", "B", "C", "D", "E", ..., "Z"]
# # # matches.map { |d| alphabet.index(d) + 1 + plus }
# # un =matches.map { |d| alphabet.index(d) + 1 }
# # p un
