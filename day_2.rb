data = File.open('day_2.txt').to_a

total_score = 0

# puts data[1][0]



# data.each_with_index do | element, index |
# 	# puts "#{element} is number #{index} in the array"
#   # puts element[0]
#   if element[2] == "X"
#     element[0] != element[2]
#     # puts total_score
#   elsif element[2] == "Y"
#     element[0] = element[2]
#     # puts total_score
#   elsif element[2] == "Z"
#     total_score += 3
#   else
#     total_score += 0
#     # puts total_score
#   end
# end

# data.each_with_index do | element, index |
# 	# puts "#{element} is number #{index} in the array"
#   # puts element[0]
#   if element[2] == "X"
#     total_score += 1
#     # puts total_score
#   elsif element[2] == "Y"
#     total_score += 2
#     # puts total_score
#   elsif element[2] == "Z"
#     total_score += 3
#   else
#     total_score += 0
#     # puts total_score
#   end
# end


puts total_score

data.each_with_index do | element, index |
	# puts "#{element} is number #{index} in the array"
  # puts element[2]
  if element[0] == "A" && element[2] == "X"
    total_score += 3
  elsif element[0] == "B" && element[2] == "X"
    total_score += 1
  elsif element[0] == "C" && element[2] == "X"
    total_score += 2
  elsif element[0] == "A" && element[2] == "Z"
    total_score += 8
  elsif element[0] == "B" && element[2] == "Z"
    total_score += 9
  elsif element[0] == "C" && element[2] == "Z"
    total_score += 7
  elsif element[0] == "A" && element[2] == "Y"
    total_score += 4
  elsif element[0] == "B" && element[2] == "Y"
    total_score += 5
  elsif element[0] == "C" && element[2] == "Y"
    total_score += 6
  else
    total_score += 0
  end
end



# opp_choice = data.values_at(* data.each_index.select {|i| i.even?})

# # puts opp_choice

# nt = opp_choice.values_at(* opp_choice.each_index.select {|i| i.even?})

# puts nt


# B = 2
# C = 3

# data.each_with_index do | element, index |
#   	# puts "#{element} is number #{index} in the array"
#     # puts element[2]
#     if element[2] == "Z"
#       total_score += 6 && +=

#     elsif  element[2] == "Y"
#       total_score += 3
#     else element[2] == "X"
#       total_score += 0
#     end
#   end

  puts total_score
