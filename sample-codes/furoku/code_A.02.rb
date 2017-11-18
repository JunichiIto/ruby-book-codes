# requireで他のプログラムやライブラリを読み込む
require 'minitest/autorun'
require './lib/fizz_buzz'

class FizzBuzzTest < Minitest::Test
  # 省略

# ----------------------------------------

class UsersController < ApplicationController
  def index
    # user.rbはRailsによって自動的にrequireされる
    @users = User.all
  end
end

# ----------------------------------------

# app/models/foo/bar.rb
class Foo::Bar < ApplicationRecord
  # クラスの定義
end

# ----------------------------------------

# Railsであれば、文字列に対してunderscoreメソッドが呼び出せる
'HelloWorld'.underscore #=> "hello_world"

# ----------------------------------------

# 素のRubyではunderscoreメソッドは定義されていない
'HelloWorld'.underscore
#=> NoMethodError: undefined method `underscore' for "HelloWorld":String

# ----------------------------------------

# ActiveSupport::HashWithIndifferentAccessクラスを使ってハッシュを作成する
countries = ActiveSupport::HashWithIndifferentAccess.new(japan: 'yen', 'us' => 'dollar')
#=> {"japan"=>"yen", "us"=>"dollar"}

# このクラスを使うと、キーが文字列でもシンボルでも同等に扱われる
countries[:japan]  #=> "yen"
countries['japan'] #=> "yen"
countries[:us]     #=> "dollar"
countries['us']    #=> "dollar"

# ActiveSupport::TimeWithZoneのインスタンスを作成する
time = Time.zone.now #=> Sat, 02 Sep 2017 09:23:33 UTC +00:00
time.class           #=> ActiveSupport::TimeWithZone

# 異なるタイムゾーンの日時を取得する
time.in_time_zone("Asia/Tokyo") #=> Sat, 02 Sep 2017 18:23:33 JST +09:00
time.in_time_zone("US/Hawaii")  #=> Fri, 01 Sep 2017 23:23:33 HST -10:00
