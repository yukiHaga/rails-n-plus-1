require 'socket'

# hena_hoge.sockがunixドメインソケットの名前になる
socket_path = '/tmp/hena_hoge.sock'

# UNIXServer.newを実行することで、hena_hoge.sockというUNIXドメインソケット(ファイル)が生成される
server = UNIXServer.new(socket_path)
puts "サーバーが起動しました"

loop do
  # プロセスはこのUNIXドメインソケットを利用して、外部からの入力を受け付けられるようにしている
  # acceptはクライントにデータを流すためのソケットを戻り値として返す
  client = server.accept

  puts "クライアントが接続しました"

  # クライアントからのデータを読み取り、加工して返す例
  data = client.gets.chomp
  processed_data = data.upcase

  client.puts "サーバーからの応答: #{processed_data}"

  client.close
end
