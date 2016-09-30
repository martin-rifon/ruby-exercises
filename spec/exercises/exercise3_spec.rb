require 'spec_helper'

require 'exercises/exercise3'

describe '.include?' do
  subject { Excercise3.include?(*params) }

  context 'with normal array' do
    context 'with a valid item in the array' do
      let(:params) { [['a', 'b', :symbol, 1], 1] }

      it { is_expected.to be_truthy }
    end

    context 'with a valid item not in the array' do
      let(:params) { [['a', 'b', :symbol, 1], 'c'] }

      it { is_expected.to be_falsey }
    end
  end

  context 'with empty array' do
    context 'with a valid item' do
      let(:params) { [[], 'asd'] }

      it { is_expected.to be_falsey }
    end

    context 'with invalid item' do
      let(:params) { [[], nil] }

      it { is_expected.to be_falsey }
    end
  end
end
