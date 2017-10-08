def to_hex(r, g, b)
  [r, g, b].inject('#') do |hex, n|
    # 変数（ブロック引数）の中身をターミナルに出力する
    puts hex
    hex + n.to_s(16).rjust(2, '0')
  end
end

# ----------------------------------------

module DeepFreezable
  def deep_freeze(array_or_hash)
    case array_or_hash
    when Array
      # Arrayのwhen節が実行されたことをターミナルに出力する
      puts 'when Array'
      array_or_hash.each do |element|
        element.freeze
      end
    when Hash
      array_or_hash.each do |key, value|
        key.freeze
        value.freeze
      end
    end
    array_or_hash.freeze
  end
end

# ----------------------------------------

def calc_fare(ticket)
  from = STATIONS.index(ticket.stamped_at)
  to = STATIONS.index(@name)
  # to - fromの結果をターミナルに出力しつつ、変数distanceに代入する
  distance = p to - from
  FARES[distance - 1]
end
