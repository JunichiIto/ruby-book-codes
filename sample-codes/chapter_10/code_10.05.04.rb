def proc_return
  f = Proc.new { |n| return n * 10 }
  ret = [1, 2, 3].map(&f)
  "ret: #{ret}"
end

def lambda_return
  f = ->(n) { return n * 10 }
  ret = [1, 2, 3].map(&f)
  "ret: #{ret}"
end

proc_return   #=> 10
lambda_return #=> "ret: [10, 20, 30]"

# ----------------------------------------

def proc_break
  f = Proc.new { |n| break n * 10 }
  ret = [1, 2, 3].map(&f)
  "ret: #{ret}"
end

def lambda_break
  f = ->(n) { break n * 10 }
  ret = [1, 2, 3].map(&f)
  "ret: #{ret}"
end

proc_break   #=> LocalJumpError: break from proc-closure
lambda_break #=> "ret: [10, 20, 30]"
