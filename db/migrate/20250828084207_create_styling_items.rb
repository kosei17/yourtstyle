class CreateStylingItems < ActiveRecord::Migration[7.1]
  def change
    create_table :styling_items do |t|
      t.references :styling, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
