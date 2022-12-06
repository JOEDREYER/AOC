data = File.read('test.txt')

s = data.strip.chars



s.each_with_index do |letter, index|
  #we want to make chunks of 4 letters
  start = index

  # p start_chunk

  the_end = index + 13

  # p end_chunk

  chunk = s[start..the_end]
  unique_chunk = chunk.uniq
  # p unique_chunk
  # p unique_chunk.count
   if unique_chunk.count == 14
    # p unique_chunk[index -1]
    p the_end + 1
    return
   end

  # make start equal to letter (whihc is the same as s[index])
  #make end equal to s[index +3]
  #chunk equal to those 4 letters
  #check if those letters are all unique
  #if so, return the last letters index + 1
  #if this is not true for a given chunk, the iteration will continue
# puts "#{letter}: #{index}"
# p letter[0]
# shift_index = index += 1
# p shift_index
# sets = letter.select {|x|  } index += 3
# array.select{|x| x.even?}
# p sets
end
