
# Explanation of Algorithm
#
# Hi, this is a brief explanation of the algorithm I'm using to solve the captcha. This is mostly for my benefit so that when I visit
# this code again in the future, I can have a better understanding of what is going on.
#
# To begin, I convert the input to an array of characters. I then append the first element to the end of the list because I want to
# compare the first and last elements (since the captcha code is supposed to be circular). What I do next is compare pairs of elements
# and I achieve this by using the Ruby method "each_cons" for arrays.
# According to Ruby Doc, each_cons "Iterates the given block for each array of consecutive <n> elements.
# If no block is given, returns an enumerator." I then take the first element of each pair and put them into an array, convert the array
# of characters to an array of integers, and then I sum the integers.


def day_one(input)
  n = input.strip.split('')
  b = input.split('')
  n << n.first
  # puts "n.each_cons(2).to_a is #{n.each_cons(2).to_a}"
  # puts "n.each_cons(2).to_a.select { |x, y| x == y } is #{n.each_cons(2).to_a.select { |x, y| x == y }}"
  # puts "n.each_cons(2).to_a.select { |x, y| x == y }.map(&:first) is #{n.each_cons(2).to_a.select { |x, y| x == y }.map(&:first)}"
  # puts "n.each_cons(2).to_a.select { |x, y| x == y }.map(&:first).map(&:to_i) is #{n.each_cons(2).to_a.select { |x, y| x == y }.map(&:first).map(&:to_i)}"
   puts n.each_cons(2).to_a
     .select { |x, y| x == y }
     .map(&:first)
     .map(&:to_i)
     .inject(:+)
  #
  # sum = 0
  # digits = input.strip.split('')
  # digits.each_index do |i|
  #   if i == digits.size - 1
  #     sum += digits.last.to_i if digits.last == digits.first
  #   elsif digits[i] == digits[i + 1]
  #     sum += digits[i].to_i
  #   end
  # end
  # puts sum
end


# read captcha file
input_file_path = File.expand_path("../captcha.txt", __FILE__)
f = File.read(input_file_path)

puts day_one(f)






