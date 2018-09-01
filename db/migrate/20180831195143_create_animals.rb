class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :age
      t.string :hair_color
      t.string :gender
      t.boolean :alive

      t.timestamps
    end
  end
end
