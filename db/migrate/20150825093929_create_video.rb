class CreateVideo < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name
      t.string :description
      t.string :file

      t.timestamps null: false

    end

    add_reference :videos, :user, index: true
    add_foreign_key :videos, :users
  end
end
