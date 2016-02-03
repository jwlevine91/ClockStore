class CreateClocks < ActiveRecord::Migration
  def change
    create_table :clocks do |t|
      t.string :name
      t.integer :size
      t.string :image
      t.integer :cost

      t.timestamps null: false
    end
  end
end
