input_array = []
File.open("input.txt").each do |line|
  input_array <<  line.to_s.split(" ").map(&:to_i)
end

checksum = 0
input_array.each{ |int_array|
  x = int_array.combination(2).to_a
  x.each{ |pair|
    if (pair[0] % pair[1] == 0)
      checksum += (pair[0]/pair[1])
    elsif (pair[1] % pair[0] == 0)
      checksum += (pair[1]/pair[0])
    end
  }
}

checksum
