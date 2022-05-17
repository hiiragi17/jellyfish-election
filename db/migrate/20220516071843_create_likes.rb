class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.references :jellyfish, foreign_key: true
      t.string :ip
      t.timestamps
    end
  end
end
