puts "starting..."

pid = Process.fork

if pid
  # 親プロセス
  puts "parent"
else
  # 子プロセス
  puts "child"
end
