pid = Process.fork

if pid.nil?
  # 子プロセス
  # 子プロセスは即死する
  exit
else
  # 親プロセス
  # 子プロセスのpidを出力
  puts pid
  loop do
    sleep
  end
end