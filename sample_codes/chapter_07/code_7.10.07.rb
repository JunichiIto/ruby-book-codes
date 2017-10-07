alice = 'I am Alice.'
bob = 'I am Bob.'

# aliceのオブジェクトにだけ、shuffleメソッドを定義する
def alice.shuffle
  chars.shuffle.join
end

# aliceはshuffleメソッドを持つが、bobは持たない
alice.shuffle #=> "m le a.icIA"
bob.shuffle   #=> NoMethodError: undefined method `shuffle' for "I am Bob.":String
