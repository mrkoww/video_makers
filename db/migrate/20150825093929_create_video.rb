class CreateVideo < ActiveRecord::Migration
  def change
    create_table :video do |t|
      t.string :name
      t.string :description
      t.string :file

      t.timestamps null: false
    end
  end
end
