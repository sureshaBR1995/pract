class CreateSpeakers < ActiveRecord::Migration[6.0]
  def change
    create_table :speakers do |t|
      t.string :model
      t.string :brand
      t.integer :price

      t.timestamps
    end
  end
end
