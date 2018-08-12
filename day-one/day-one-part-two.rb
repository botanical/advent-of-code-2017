def day_one_part_two(input)
  n = input.strip.split('').map { |c| Integer(c) }
  # puts "#{n}"
  # puts "(n.rotate(n.size/2)) is #{(n.rotate(n.size/2))}"
  # puts "n.zip(n.rotate(n.size/2)) is #{n.zip(n.rotate(n.size/2))}"
  puts n.zip(n.rotate(n.size/2))
        .select { |x,y| x == y }
        .map(&:first)
        .inject(:+)
end

input_file_path = File.expand_path("../captcha.txt", __FILE__)
f = File.read(input_file_path)

puts day_one_part_two(f)
