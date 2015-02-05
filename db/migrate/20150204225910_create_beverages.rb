class CreateBeverages < ActiveRecord::Migration
  def change
    create_table :beverages do |t|
      t.string :roast
      t.float :quantity
      t.float :price
      t.boolean :decaf
      t.date :expiration_date
      t.string :brew

      t.timestamps
    end
  end
end
