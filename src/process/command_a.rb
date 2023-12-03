puts "start command_a"

stdin_file = File.open("hoge.txt", "r")
lines = stdin_file.readlines
stdin_file.close

stdout_file = $stdout
stdout_file.write(lines.join)
stdout_file.close



