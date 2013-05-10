class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t| 
      t.datetime :order_date_time
      t.datetime :executed_date
      t.string :trade_type
      t.string :sub_type
      t.string :buy_sell_code
      t.string :asset_type
      t.string :symbol
      t.string :description
      t.integer :cusip
      t.decimal :price
      t.integer :quantity
      t.string :transaction_id
      t.decimal :value
      t.decimal :commission
      t.string :order_number
      t.decimal :fees
      t.decimal :additional_fees
      t.boolean :cash_balance_effect
      t.string :open_close
      t.datetime :option_expire_date
      t.string :option_underlying_symbol
      t.string :option_type
      t.decimal :option_strike
      t.decimal :accrued_interest
      t.integer :shares_before
      t.integer :shares_after
      t.decimal :other_charges
      t.decimal :redemption_fee
      t.decimal :cdsc_fee
      t.decimal :bond_interest_rate
      t.integer :account_type

      t.timestamps
    end 
  end 
end
