class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.belongs_to :post, null: false, foreign_key: true
      t.integer :likes, default: 0

      t.timestamps
    end
  end
end
