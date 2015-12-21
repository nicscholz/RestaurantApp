class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :guest_total
      t.integer :top_number

      t.timestamps null: false
    end
  end
end
