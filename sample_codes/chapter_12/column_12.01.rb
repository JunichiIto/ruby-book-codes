# コラム：requireの単位はライブラリ
# Kernelモジュールのopenメソッドは通常URLは開けない（ファイルを開くときに使用する）
open 'http://example.com' #=> Errno::ENOENT: No such file or directory @ rb_sysopen - http://example.com

# ただし、open-uriライブラリをrequireするとURLが開けるようになる
require 'open-uri'
open 'http://example.com' #=> #<StringIO:...
