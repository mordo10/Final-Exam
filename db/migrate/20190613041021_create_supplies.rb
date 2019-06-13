class CreateSupplies < ActiveRecord::Migration[5.2]
  def change
    create_table :supplies do |t|
      t.string :art_name
      t.string :art_type
      t.date :del_date
      t.integer :stock

      t.timestamps
    end
  end
end
