class Trade < ActiveRecord::Base
  attr_accessible :description, :symbol
  validates :symbol, :order_date_time, :executed_date, :type, :sub_type, :buy_sell_code, :asset_type, :symbol, :description, :cusip, :price, :quantity, :transaction_id, :value, :commission, :order_number, :fees, :additional_fees, :cash_balance_effect, :presence => true
end
