
SAMPLE = {}
SAMPLE[1] = %w(Z N)
SAMPLE[2] = %w(M C D)
SAMPLE[3] = %w(P)

STACK = {}
STACK[1] = %w(D L J R V G F)
STACK[2] = %w(T P M B V H J S)
STACK[3] = %w(V H M F D G P C)
STACK[4] = %w(M D P N G Q)
STACK[5] = %w(J L H N F)
STACK[6] = %w(N F V Q D G T Z)
STACK[7] = %w(F D B L)
STACK[8] = %w(M J B S V D N)
STACK[9] = %w(G L D)

#  p SAMPLE[1]

def rearrange
  File.readlines('day_5.txt', chomp: true).map do |line|
    numbers = line.split(" ")
    numbers.delete_at(0)
    numbers.delete_at(1)
    numbers.delete_at(2)
    numbers.map(&:to_i)
    p numbers
  end
end

# p rearrange

rearrange.each do |instruction|
  # for each instruction: pop(index 0) from (index 1) and push into (index 2)
  instruction[0].times do
    move = STACK[instruction[1]].pop
    STACK[instruction[2]].push(move)
  end
end

result = ""

STACK.each do |stack|
  letter = stack[1].last
  result += letter
end

# p result

# PART 2

rearrange.each do |instruction|
  move = STACK[instruction[1]].pop(instruction[0])
  STACK[instruction[2]].push(move).flatten!
end


result = ""

STACK.each do |stack|
  letter = stack[1].last
  result += letter
end

p result
