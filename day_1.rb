data = File.foreach('day_1.txt',"\n\n").to_a


grouped_data = data.map { |d|
  d.split("\n").map(&:to_i).sum
}

puts grouped_data.max

puts grouped_data.sort.reverse[0..2].sum
