# 正しくは assert_equal({ 'japan' => 'yen' }, currencies) のように丸括弧が必要
assert_equal { 'japan' => 'yen' }, currencies
#=> test/deep_freezable_test.rb:15: syntax error, unexpected =>, expecting '}'
#   assert_equal { 'japan' => 'yen' }, currencies
#                            ^
