file = File.open("nyan.txt", "r")
# ファイルのデータはもともとディスクに存在している。プロセスがもともとメモリー内に持っているものではない
# このディスクに存在しているファイルのデータを、readlinesで変数に代入することで、
# プロセスの外部に存在しているディスクのデータを、プロセスの内部のメモリーに読み込んでいる
lines = file.readlines # ファイルの中身を全部読み込む
file.close

copy_file = File.open("nyan_copy.txt", "w")
copy_file.write(lines.join)
file.close
