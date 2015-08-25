class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name
      t.string :description
      t.references :attachment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
