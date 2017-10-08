# コラム：Singletonモジュールを使う

require 'singleton'

class Configuration
  # Singletonモジュールをincludeする
  include Singleton

  attr_accessor :base_url, :debug_mode

  def initialize
    # 設定値を初期化する
    @base_url = ''
    @debug_mode = false
  end
end

# Configurationクラスはnewできない
config = Configuration.new #=> NoMethodError: private method `new' called for Configuration:Class

# instanceメソッドを使ってインスタンスを取得する
config = Configuration.instance
# 設定値を設定する
config.base_url = 'http://example.com'
config.debug_mode = true

# instanceメソッドを使って再度インスタンスを取得する
other = Configuration.instance
# 先ほど設定した設定値を取得できる
other.base_url   #=> "http://example.com"
other.debug_mode #=> true

# どちらも全く同じオブジェクト（インスタンス）になっている
config.object_id     #=> 70250527744820
other.object_id      #=> 70250527744820
config.equal?(other) #=> true
