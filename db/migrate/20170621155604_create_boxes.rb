class CreateBoxes < ActiveRecord::Migration[5.1]
  def change
    create_table :boxes do |t|
      t.string :title
      t.text :content
      t.string :qrcode_url
      t.boolean :processed, default: false

      t.timestamps
    end
  end
end
