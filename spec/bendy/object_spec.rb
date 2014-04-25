require 'minitest/spec'
require 'minitest/autorun'
require 'bendy/object'

using Bendy

describe Object do
  describe 'Object#try' do
    it 'returns nil when called on a nil value' do
      nil.try(:to_i).must_equal nil
    end

    it 'calls public method for passed symbol on normal values' do
      "1".try(:to_i).must_equal 1
    end

    it 'block syntax' do
      [1, 2, 3].try(:map){ |v| v + 1 }.must_equal [2, 3, 4]
    end
  end
end
