class CreateSalespeople < ActiveRecord::Migration[7.0]
  def change
    create_table :salespeople do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "email"
      
      t.timestamps
    end
  end
end

# id INTEGER PRIMARY KEY AUTOINCREMENT,
# first_name TEXT,
# last_name TEXT,
# email TEXT
# );