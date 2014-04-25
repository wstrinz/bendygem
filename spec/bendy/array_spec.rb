require 'minitest/spec'
require 'minitest/autorun'
require 'bendy/array'

using Bendy

describe Array do
  before do
    @array = [1, 2, 3]
  end

  describe 'Array#tails' do
    it 'produces all sub-arrays by dropping successive elements' do
      @array.tails.must_equal [[1, 2, 3], [2, 3], [3], []]
    end
  end

  describe 'Array#inits' do
    it 'produces all sub-arrays by taking successive elements' do
      @array.inits.must_equal [[], [1], [1, 2], [1, 2, 3]]
    end
  end
end
