require './spec/spec_helper'
require './lib/word_synth'
require './lib/effects'

RSpec.describe WordSynth do
  let(:synth) { WordSynth.new }
  subject { synth.play('Ruby is fun!') }

  context 'without effects' do
    it { is_expected.to eq 'Ruby is fun!' }
  end

  context 'with reverse' do
    before do
      synth.add_effect(Effects.reverse)
    end
    it { is_expected.to eq 'ybuR si !nuf' }
  end

  context 'with many effects' do
    before do
      synth.add_effect(Effects.echo(2))
      synth.add_effect(Effects.loud(3))
      synth.add_effect(Effects.reverse)
    end
    it { is_expected.to eq '!!!YYBBUURR !!!SSII !!!!!NNUUFF' }
  end
end
