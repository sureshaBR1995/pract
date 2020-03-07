class CreateTvs < ActiveRecord::Migration[6.0]
  def change
    create_table :tvs do |t|
      t.string :name
      t.string :model
      t.integer :price

      t.timestamps
    end
  end
end
