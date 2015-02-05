class CreatePastries < ActiveRecord::Migration
  def change
    create_table :pastries do |t| #create this table in the database
      t.string :name
      t.float :price
      t.integer :quantity

      t.timestamps #default database field that rails creates (created_at, updated_at)
    end
  end
end
