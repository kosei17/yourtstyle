class CreateStylings < ActiveRecord::Migration[7.1]
  def change
    create_table :stylings do |t|
      t.references :user, null: false, foreign_key: true
      t.text :caption
      t.integer :price

      t.timestamps
    end
  end
end
