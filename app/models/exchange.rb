class Exchange < ActiveRecord::Base

  def self.balance
    total = 0
      self.all.each {|e| total += e.credits.to_f - e.debits.to_f}
    total
  end

  def self.current_month
    self.all.select {|e| e.created_at.month == Time.now.month}
  end

  def self.previous_month
    self.all.select {|e| e.created_at.month == Time.now.month-1}
  end

  def self.current_debits
    total = 0
    self.current_month.each {|e| total += e.debits.to_f}
    total
  end

  def self.previous_debits
    total = 0
    self.previous_month.each {|e| total += e.debits.to_f}
    total
  end

  def self.big_expense
    expense = 0
    name = ""
    self.current_month.select do |e|
      e.debits.to_f > expense
      if e.debits.to_f > expense
        expense = e.debits.to_f
      end
    end

  end




end
