class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :space_type
      t.string :street
      t.string :residence

      t.timestamps null: false
    end
  end
end
