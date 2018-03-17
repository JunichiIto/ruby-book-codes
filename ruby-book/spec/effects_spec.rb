require './spec/spec_helper'
require './lib/effects'

RSpec.describe Effects do
  subject { effect.call('Ruby is fun!') }

  describe '.reverse' do
    let(:effect) { Effects.reverse }
    it { is_expected.to eq 'ybuR si !nuf' }
  end

  describe '.echo' do
    context 'rate is 2' do
      let(:effect) { Effects.echo(2) }
      it { is_expected.to eq 'RRuubbyy iiss ffuunn!!' }
    end
    context 'rate is 3' do
      let(:effect) { Effects.echo(3) }
      it { is_expected.to eq 'RRRuuubbbyyy iiisss fffuuunnn!!!' }
    end
  end

  describe '.loud' do
    context 'level is 2' do
      let(:effect) { Effects.loud(2) }
      it { is_expected.to eq 'RUBY!! IS!! FUN!!!' }
    end
    context 'level is 3' do
      let(:effect) { Effects.loud(3) }
      it { is_expected.to eq 'RUBY!!! IS!!! FUN!!!!' }
    end
  end
end
