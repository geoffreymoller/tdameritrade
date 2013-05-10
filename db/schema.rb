# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130509050801) do

  create_table "trades", :force => true do |t|
    t.datetime "order_date_time"
    t.datetime "executed_date"
    t.string   "trade_type"
    t.string   "sub_type"
    t.string   "buy_sell_code"
    t.string   "asset_type"
    t.string   "symbol"
    t.string   "description"
    t.integer  "cusip"
    t.decimal  "price"
    t.integer  "quantity"
    t.string   "transaction_id"
    t.decimal  "value"
    t.decimal  "commission"
    t.string   "order_number"
    t.decimal  "fees"
    t.decimal  "additional_fees"
    t.boolean  "cash_balance_effect"
    t.string   "open_close"
    t.datetime "option_expire_date"
    t.string   "option_underlying_symbol"
    t.string   "option_type"
    t.decimal  "option_strike"
    t.decimal  "accrued_interest"
    t.integer  "shares_before"
    t.integer  "shares_after"
    t.decimal  "other_charges"
    t.decimal  "redemption_fee"
    t.decimal  "cdsc_fee"
    t.decimal  "bond_interest_rate"
    t.integer  "account_type"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

end
