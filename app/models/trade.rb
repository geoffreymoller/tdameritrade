require 'open-uri'

class Trade < ActiveRecord::Base

  attr_accessible :order_date_time, :executed_date, :trade_type, :sub_type, :buy_sell_code, :asset_type, :symbol, :description, :cusip,
      :price, :quantity, :transaction_id, :value, :commission, :order_number, :fees, :additional_fees, :cash_balance_effect, :open_close,
      :option_expire_date, :option_underlying_symbol, :option_type, :option_strike, :accrued_interest, :shares_before, :shares_after, :other_charges,
      :redemption_fee, :cdsc_fee, :bond_interest_rate, :account_type

  validates  :order_number, :transaction_id, :uniqueness => true

  def self.get
    #TODO - service, cursor
    doc = Nokogiri::XML(open('http://localhost:8881/history.xml'))
    doc.xpath('//transaction-list').each do |transaction|
      t = Trade.new
      transaction.children.each do |child|
        name = child.name.underscore.to_sym
        if name == :type
          name = :trade_type
        end
        t[name] = child.content
      end
      t.save
    end
  end

end
