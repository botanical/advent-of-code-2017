input_array = []
File.open("input.txt").each do |line|
  input_array <<  line.to_s.split(" ").map(&:to_i)
end

checksum = 0
input_array.each{ |int_array|
  min = int_array.min
  max = int_array.max
  diff = max - min
  checksum += diff
}

checksum
