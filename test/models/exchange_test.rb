require 'test_helper'

class ExchangeTest < ActiveSupport::TestCase
  # test "total balance" do
  #   assert_equal -150.85, Exchange.balance
  # end

  test "current month transcations" do
    assert_equal 7, Exchange.current_month.count
  end

  test "previous month transcations" do
    assert_equal 1, Exchange.previous_month.count
  end

  test "current month debits" do
    assert_equal 1450.85, Exchange.current_debits
  end

  test "previous month debits" do
    assert_equal 0, Exchange.previous_debits
  end

  test "current month big expense" do
    assert_equal 900, Exchange.big_expense
  end

  test "biggest expense ever" do
    assert_equal 900, Exchange.biggest_expense
  end
  #
  # test "biggest payee" do
  #   assert_equal "", Exchange.biggest_payee
  # end
end
