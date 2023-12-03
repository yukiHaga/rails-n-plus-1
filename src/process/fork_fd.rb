# read_file = File.new("nyan.txt", "r")

# pid = Process.fork

# if pid.nil?
#   # 子プロセス
#   lines = []
#   while line = read_file.gets
#     lines << line
#   end
#   child_file = File.new("child.txt", "w")
#   child_file.write(lines.join)
#   child_file.close
# else
#   # 親プロセス
#   lines = []
#   while line = read_file.gets
#     lines << line
#   end
#   parent_file = File.new("parent.txt", "w")
#   parent_file.write(lines.join)
#   parent_file.close
# end
# read_file.close
# fork_fd.rb
# -*- coding: utf-8 -*-

file = File.open("nyan.txt","r")

# ファイルをopenしてからforkする

pid = Process.fork

if pid.nil?
  #子プロセス
  sleep 1 # 親プロセスがfileを閉じるのを待つ

  # 親プロセスがfdを閉じてても、自分はまだ番号札を持ってるから読み込める
  puts file.readlines.join

  file.close #自分も番号札を返す
else
  # line = file.readline
  p "huga"
  p "====="
  # 親プロセス
  file.close #番号札をOSに返す
  Process.wait(pid) #子プロセスが終わるの待つ
end
