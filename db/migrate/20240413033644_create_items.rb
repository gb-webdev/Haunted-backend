class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :title
      t.decimal :price
      t.string :contact
      t.string :location
      t.string :condition
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
