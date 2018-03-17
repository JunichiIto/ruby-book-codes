require './spec/spec_helper'
require './lib/convert_hash_syntax'

RSpec.describe 'Convert hash syntax' do
  let(:old_syntax) do
    <<~TEXT
      {
        :name => 'Alice',
        :age=>20,
        :gender  =>  :female
      }
    TEXT
  end
  let(:expected) do
    <<~TEXT
      {
        name: 'Alice',
        age: 20,
        gender: :female
      }
    TEXT
  end
  it 'converts old syntax to new syntax' do
    expect(convert_hash_syntax(old_syntax)).to eq expected
  end
end
