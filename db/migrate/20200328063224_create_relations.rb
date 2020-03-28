class CreateRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :relations do |t|
      t.integer :post_id
      t.integer :category_id

      t.timestamps
    end
  end
end
