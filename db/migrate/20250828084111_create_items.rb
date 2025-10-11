class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :brand
      t.integer :price
      t.string :url

      t.timestamps
    end
  end
end
