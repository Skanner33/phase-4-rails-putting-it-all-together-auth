class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :title, null: false
      t.text :instructions, null: false
      t.integer :minutes_to_complete

      t.timestamps
    end
  end
end
