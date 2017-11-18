numbers = [1, 2, 3, 4]
sum = 0
numbers.each { |n| sum += n }
sum #=> 10

# ----------------------------------------

numbers = [1, 2, 3, 4]
sum = numbers.inject(0) { |result, n| result + n }
sum #=> 10

# ----------------------------------------

numbers = [1, 2, 3, 4]
sum = numbers.inject(0) { |result, n| result + n }

# ----------------------------------------

((((0 + 1) + 2) +3) + 4)

# ----------------------------------------

['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'].inject('Sun') { |result, s| result + s }
#=> "SunMonTueWedThuFriSat"

# ----------------------------------------

(((((('Sun' + 'Mon') + 'Tue') + 'Wed') + 'Thu') + 'Fri') + 'Sat')
