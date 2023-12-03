file = File.open("kuga.txt", "w")
puts file.fileno # => 9
file.close