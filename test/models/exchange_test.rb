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
    assert_equal 920.1, Exchange.current_debits
  end

  test "previous month debits" do
    assert_equal 0, Exchange.previous_debits
  end

  test "current month big expense" do
    assert_equal 1, Exchange.big_expense[0].debits
  end

  test "biggest expense ever" do
    assert_equal 1, Exchange.biggest_expense

  end
end
