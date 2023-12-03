pid = Process.fork

if pid.nil?
  # exec 'ruby -e p "hello"'
  # 子プロセス
  # 親プロセスのidを取得する
  puts "親プロセスid: #{Process.ppid}"

  # 親が死ぬまで2秒まつ
  sleep 2

  # 親プロセスが死んだ後のppid
  puts "親プロセスid: #{Process.ppid}"
  # sleep
else
  # 親プロセス
  sleep 1

  # rubyプログラムを終了させる
  # つまり、実行中のプロセスがなくなるので、プロセスが死ぬ
  exit
end