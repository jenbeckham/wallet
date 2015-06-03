require 'test_helper'

class ExchangeTest < ActiveSupport::TestCase
  test "total balance" do
    assert_equal 379.9, Exchange.balance
  end

  test "current month transcations" do
    assert_equal 4, Exchange.current_month.count
  end

  test "previous month transcations" do
    assert_equal 1, Exchange.previous_month.count
  end

  test "current month debits" do
  ends

  test "previous month debits" do
  end

  # test "the truth" do
  #   assert true
  # end
end
