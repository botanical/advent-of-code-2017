file_path = File.expand_path("../input.txt", __FILE__)
input = File.read(file_path).to_i

grid_dimensions = Math.sqrt(input).ceil


