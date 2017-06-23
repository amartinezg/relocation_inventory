class AddQrToBoxes < ActiveRecord::Migration[5.1]
  def self.up
    add_attachment :boxes, :qr
    remove_column :boxes, :qrcode_url
  end

  def self.down
    remove_attachment :boxes, :qr
    add_column :boxes, :qrcode_url, :string
  end
end
