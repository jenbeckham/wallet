require 'test_helper'

class ExchangeTest < ActiveSupport::TestCase
  test "total balance" do
    assert_equal 194.9, Exchange.balance
  end

  test "current month transcations" do
    assert_equal 4, Exchange.current_month.count
  end


  # test "the truth" do
  #   assert true
  # end
end
