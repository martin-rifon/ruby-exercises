require 'spec_helper'

require 'exercises/exercise4'

describe '.take' do
  subject { Excercise4.take(*params) }

  context 'with empty array' do
    context 'when taking N elements' do
      let(:params) { [[], 4] }

      it { is_expected.to be_empty }
    end

    context 'when taking 0 elements' do
      let(:params) { [[], 0] }

      it { is_expected.to be_empty }
    end

    context 'when taking a negative amount of elements' do
      let(:params) { [[], -2] }

      it { expect { subject }.to raise_exception(ArgumentError) }
    end
  end

  context 'with valid array' do
    context 'when taking 1 element' do
      let(:params) { [['a', 'b', :symbol, 1], 1] }

      it { is_expected.to match_array(['a']) }
    end

    context 'when taking 2 elements' do
      let(:params) { [['a', 'b', :symbol, 1], 2] }

      it { is_expected.to match_array(%w(a b)) }
    end

    context 'when taking N elements' do
      let(:params) { [['a', 'b', :symbol, 1, 2], 4] }

      it { is_expected.to match_array(['a', 'b', :symbol, 1]) }
    end

    context 'when taking 0 elements' do
      let(:params) { [[1, 'A'], 0] }

      it { is_expected.to be_empty }
    end

    context 'when taking a negative amount of elements' do
      let(:params) { [[1, 'A', :sym], -2] }

      it { expect { subject }.to raise_exception(ArgumentError) }
    end
  end
end
