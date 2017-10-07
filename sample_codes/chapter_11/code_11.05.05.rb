# underscoreメソッドは文字列をスネークケースに変換するメソッド
'OrderItem'.underscore #=> "order_item"

# このメソッドが定義されているのはactivesupport gemのinflections.rbの118行目
'OrderItem'.method(:underscore).source_location
#=> ["/(gemがインストールされているパス)/activesupport-5.0.0/lib/active_support/core_ext/string/inflections.rb", 118]
