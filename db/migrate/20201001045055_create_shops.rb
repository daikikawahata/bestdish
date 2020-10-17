class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string  :name        , null: false
      t.string  :address     , null: false
      t.integer :category_id , null: false
      t.integer :user_id     , null: false
      t.string  :dishname
      t.integer :price
      t.string  :impression
      t.timestamps
    end
  end
end
