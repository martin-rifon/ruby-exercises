require 'spec_helper'

require 'exercises/exercise5'

describe '.swapcase' do
  subject { Excercise5.swapcase(*params) }

  context 'with a valid string' do
    context 'when all lowercase' do
      let(:params) { 'this 123 is a string' }

      it { is_expected.to eq('THIS 123 IS A STRING') }
    end

    context 'when all uppercase' do
      let(:params) { 'THIS IS A STR$%^&$%^&ING' }

      it { is_expected.to eq('this is a str$%^&$%^&ing') }
    end

    context 'when mixed case' do
      let(:params) { 'ThIs Is A sTrInG' }

      it { is_expected.to eq('tHiS iS a StRiNg') }
    end

    context 'when no letters' do
      let(:params) { '1234567890-=[]/][""]#$%^&*()' }

      it { is_expected.to eq('1234567890-=[]/][""]#$%^&*()') }
    end
  end

  context 'with an empty string' do
    let(:params) { '' }

    it { is_expected.to be_empty }
  end
end
