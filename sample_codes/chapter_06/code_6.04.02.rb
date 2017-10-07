def convert_hash_syntax(old_syntax)
  old_syntax.gsub(/:(\w+) *=> */, '\1: ')
end


# 実行結果をいったん変数に入れて、コンソールに出力する
actual = convert_hash_syntax(old_syntax)
puts actual
assert_equal expected, actual
