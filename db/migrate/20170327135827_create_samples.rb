class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.integer :user_id
      t.string :category
      t.string :title
      t.text :description
      t.boolean :marquee

      t.timestamps null: false
    end
  end
end
