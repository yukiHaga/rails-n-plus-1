stdin_file = $stdin
# IOを待っているので、プロセスが「ブロック中」になっている。
lines = stdin_file.readlines
stdin_file.close

# rubyの組み込みグローバル変数 $stdout には、「標準出力」と言われるものが、
# すでにFile.openされた状態で入っています。この「標準出力」の出力先は、デフォルトではターミナルをさします
stdout_file = $stdout
stdout_file.write(lines.join)
stdout_file.close
