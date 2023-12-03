require "socket"

# 12345 portで待ち受けるソケットを開く
listening_socket = TCPServer.open(12345)

# ソケットもファイルなので、fdがある
puts listening_socket.fileno # => 10

# acceptでクライアントからの接続を待つ
puts "accepting..."
socket = listening_socket.accept
puts "accepted!"

# 接続されると新しいsocketが作られる
# この新しいsocketを通じて、プロセスはクライアントと通信をする
# 新しいsocketなので、fdの番号がlistening_socketと違う
puts socket.fileno # => 11

listening_socket.close
