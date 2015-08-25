class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
    end

    add_reference :comments, :user, index: true
    add_reference :comments, :video, index: true

    add_foreign_key :comments, :users
    add_foreign_key :comments, :videos
  end
end
