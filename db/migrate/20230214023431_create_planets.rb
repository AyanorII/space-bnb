class CreatePlanets < ActiveRecord::Migration[7.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :location
      t.float :price
      t.integer :maximum_guests
      t.text :description
      t.integer :rotation_time
      t.integer :revolution_time
      t.integer :radius
      t.integer :avg_temperature
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
