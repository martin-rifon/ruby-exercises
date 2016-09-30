require 'spec_helper'

require 'exercises/exercise2'

describe '.random_float_between_10_and_100' do
  subject { Excercise2.random_float_between_10_and_100 }

  it { is_expected.to be_between(10, 100).inclusive }
end
