class Exchange < ActiveRecord::Base

  def self.balance
    total = 0
      self.all.each {|e| total += e.credits.to_f - e.debits.to_f}
    total
  end

  def self.current_month
    self.all.select {|e| e.created_at.month == Time.now.month}
  end
end
