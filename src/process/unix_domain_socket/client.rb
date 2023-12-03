require 'socket'

socket_path = '/tmp/hena_hoge.sock' # サーバーと同じunixドメインソケットのパスを使用

client = UNIXSocket.new(socket_path)

client.puts "Hello, server!"

response = client.gets.chomp
puts response

client.close
