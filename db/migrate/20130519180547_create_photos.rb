class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :description
      t.boolean :approved
      t.integer :user_id
    end
  end
end
