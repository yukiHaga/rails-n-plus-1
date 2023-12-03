puts "start command_b"

stdin_file = $stdin
lines = stdin_file.readlines
stdin_file.close

stdout_file = $stdout
stdout_file.write([*lines, "command_b"].join)
stdout_file.close
