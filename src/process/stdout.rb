# file = File.open("nyan.txt","r")
# rubyだと標準入力はFile.openされた状態で $stdin というグローバル変数に入っています。
# 標準入力のデフォルトの入力ソースはターミナルになります
file = $stdin
# IOを待っているので、プロセスが「ブロック中」になっている。
lines = file.readlines
file.close

# rubyの組み込みグローバル変数 $stdout には、「標準出力」と言われるものが、
# すでにFile.openされた状態で入っています。この「標準出力」の出力先は、デフォルトではターミナルをさします
file = $stdout
file.write(lines.join)
file.close
