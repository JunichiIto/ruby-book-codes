# 自分で書いたプログラムを読み込む
require './sample' #=> true

# 不具合があったので、sample.rbを修正する

# しかし、すでに読み込み済みなので修正が反映されない
require './sample' #=> false

# ----------------------------------------

load './sample.rb' #=> true

# loadを使うと無条件に読み込むことができる（なのでファイルの変更が反映される）
load './sample.rb' #=> true
