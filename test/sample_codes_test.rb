require 'pathname'
require 'minitest/autorun'

class SampleCodesTest < Minitest::Test
  CONFIG = {
    'code_2.02.08.rb' => { syntax_ignore: [29] },
    'code_2.06.00.rb' => { syntax_ignore: [29..31] },
    'code_2.10.02.rb' => { syntax_ignore: [39, 46] },
    'code_2.11.03.rb' => { syntax_ignore: [22, 27] },
    'code_2.12.04.rb' => { syntax_ignore: [1] },
    'code_3.03.02.rb' => { syntax_ignore: [34] },
    'code_5.06.02.rb' => { syntax_ignore: [6] },
    'code_5.06.05.rb' => { syntax_ignore: [24] },
    'code_5.06.06.rb' => { syntax_ignore: [17] },
    'code_5.07.01.rb' => { syntax_ignore: [13..16] },
    'code_7.04.02.rb' => { syntax_ignore: [34] },
    'code_7.04.04.rb' => { syntax_ignore: [25..26] },
    'code_7.08.00.rb' => { syntax_ignore: [23] },
    'code_8.02.02.rb' => { syntax_ignore: [11, 14..15] },
    'code_8.04.03.rb' => { syntax_ignore: [25] },
    'code_8.06.02.rb' => { syntax_ignore: [3..6] },
    'code_11.03.08.rb' => { syntax_ignore: [2] },
    'code_11.04.04.rb' => { syntax_ignore: [4..8] },
    'code_A.02.rb' => { syntax_ignore: [5] },
  }

  def assert_syntax(pathname, script)
    if ranges = CONFIG.dig(pathname.basename.to_s, :syntax_ignore)
      assert_raises(SyntaxError) do
        RubyVM::InstructionSequence.compile(script)
      end
      RubyVM::InstructionSequence.compile(comment_out(ranges, script))
    else
      RubyVM::InstructionSequence.compile(script)
    end
  end

  def comment_out(ranges, script)
    script.lines.map.with_index(1) {|line, row|
      target = ranges.any?{|obj| ignore?(obj, row)}
      target ? "# #{line}" : line
    }.join
  end

  def ignore?(obj, row)
    case obj
    when Range
      obj.include?(row)
    when Integer
      obj == row
    end
  end

  def test_sample_codes
    files = Dir.glob("./sample_codes/**/*.rb")

    files.each do |file|
      File.open(file, 'r+:utf-8') do |f|
        pathname = Pathname.new(f.path)
        print ',' + pathname.basename.to_s
        script = f.read
        assert_syntax(pathname, script)
      end
    end
  end
end