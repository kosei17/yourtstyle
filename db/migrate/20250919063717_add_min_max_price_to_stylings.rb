class AddMinMaxPriceToStylings < ActiveRecord::Migration[7.1]
  def change
    add_column :stylings, :min_price, :integer
    add_column :stylings, :max_price, :integer
  end
end
