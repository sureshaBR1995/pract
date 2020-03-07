class CreateBloods < ActiveRecord::Migration[6.0]
  def change
    create_table :bloods do |t|
      t.string :name
      t.integer :age
      t.string :bgroup
      t.string :gender
      t.integer :contact

      t.timestamps
    end
  end
end
