class CreateBedsitters < ActiveRecord::Migration
  def change
    create_table :bedsitters do |t|
      t.string :type
      t.string :street
      t.string :residence

      t.timestamps null: false
    end
  end
end
