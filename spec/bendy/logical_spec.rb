require 'minitest/spec'
require 'minitest/autorun'
require 'bendy/logical'

describe Bendy::Logical do
  describe '#implies' do
    include Bendy::Logical

    it 'true -> false = false' do
      implies(true){false}.must_equal false
    end

    it 'true -> true = true' do
      implies(true){true}.must_equal true
    end

    it 'false -> true = true' do
      implies(false){true}.must_equal true
    end

    it 'false -> false = true' do
      implies(false){false}.must_equal true
    end

    it 'you can use the value of the second argument' do
      implies(true){:yeah}.must_equal :yeah
    end

    it 'here is a more realistic example' do
      foo = { bar: 1 }
      implies(foo){foo[:bar]}.must_equal 1
    end

    it 'here is a more realistic example' do
      foo = nil
      implies(foo){foo[:bar]}.must_equal true
    end
  end
end
