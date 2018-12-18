class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.integer :birth_year
      t.string :name

      t.timestamps
    end
  end
end
