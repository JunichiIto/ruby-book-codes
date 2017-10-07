# コラム：ハッシュをもっと上手に使いこなすために
h = { us: 'dollar', india: 'rupee' }
{ japan: 'yen' }.merge(h) #=> {:japan=>"yen", :us=>"dollar", :india=>"rupee"}
