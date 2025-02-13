class CreateAuthors < ActiveRecord::Migration[8.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :nickname
      t.string :avatar
      t.date :dateofbirth

      t.timestamps
    end
  end
end
