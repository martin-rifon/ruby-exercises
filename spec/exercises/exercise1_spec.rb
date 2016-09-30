require 'spec_helper'

require 'exercises/exercise1'

describe '.greatest_length' do
  subject { Excercise1.greatest_length(*params) }

  context 'with one param' do
    context 'when param is array' do
      let(:params) { [[1]] }

      it { is_expected.to eq([1]) }
    end

    context 'when param is hash' do
      let(:params) { [{ symbol: 1 }] }

      it { is_expected.to eq(symbol: 1) }
    end

    context 'when param is string' do
      let(:params) { ['hello'] }

      it { is_expected.to eq('hello') }
    end
  end

  context 'with multiple params' do
    context 'when 2 params' do
      context 'when params are arrays' do
        let(:params) { [[1], [1, 2]] }

        it { is_expected.to eq([1, 2]) }
      end

      context 'when params are hashes' do
        let(:params) { [{ symbol1: 1 }, { symbol1: 1, symbol2: 2 }] }

        it { is_expected.to eq(symbol1: 1, symbol2: 2) }
      end

      context 'when params are strings' do
        let(:params) { ['hello', 'How are you?'] }

        it { is_expected.to eq('How are you?') }
      end

      context 'when params are nil and string' do
        let(:params) { ['hello', nil] }

        it { is_expected.to eq('hello') }
      end
    end

    context 'when N params' do
      context 'when params are arrays' do
        let(:params) { [[1], %w('a b c'), [1, 'x', 4, :symbol]] }

        it { is_expected.to eq([1, 'x', 4, :symbol]) }
      end

      context 'when params are hashes' do
        let(:params) do
          [{ symbol1: 1 }, { symbol1: 1, symbol2: 2 }, { symbol1: 1, symbol2: 2,
                                                         symbol3: 3 }]
        end

        it { is_expected.to eq(symbol1: 1, symbol2: 2, symbol3: 3) }
      end

      context 'when params are strings' do
        let(:params) do
          ['hello', 'How are you?',
           'This is a very long string designed to force a return']
        end

        it do
          is_expected.to eq('This is a very long string designed to force a' \
                            ' return')
        end
      end

      context 'when params are nil and strings' do
        let(:params) { [nil, 'hello', 'goodbye'] }

        it { is_expected.to eq('goodbye') }
      end
    end
  end

  context 'with invalid params' do
    context 'with one param' do
      let(:params) { nil }

      it { is_expected.to be_nil }
    end

    context 'with 2 params' do
      let(:params) { [nil, 1] }

      it { is_expected.to be_nil }
    end
  end
end
