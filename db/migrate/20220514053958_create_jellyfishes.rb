class CreateJellyfishes < ActiveRecord::Migration[5.2]
  def change
    create_table :jellyfishes do |t|
      t.string :title
      t.text :body
      t.string :jellyfish_image

      t.timestamps
    end
  end
end