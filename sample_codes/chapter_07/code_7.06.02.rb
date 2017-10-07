class User
end


user = User.new
user.to_s #=> "#<User:0x007f8f9286d598>"
user.nil? #=> false


User.superclass #=> Object


user = User.new
user.methods.sort #=> [:!, :!=, :!~, :<=>, :==, （省略） :untrust, :untrusted?]
