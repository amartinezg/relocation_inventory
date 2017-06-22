require 'rqrcode'

class Box < ApplicationRecord
  include Rails.application.routes.url_helpers

  validates_uniqueness_of :title

  after_commit :generate_qr
  after_create :update_qr_url
  ROOT_URL="http://localhost:3000"

  private
  def generate_qr
    qr_text = Rails.application.routes.url_helpers.box_url(self, host: ROOT_URL)
    path = Rails.root.join('app','assets','images','qr_codes',"#{self.id}.png")
    qrcode = RQRCode::QRCode.new(qr_text)
    png = qrcode.as_png(file: path, size: 350, border_modules: 0)
  end

  def update_qr_url
    self.qrcode_url = "qr_codes/#{self.id}.png"
    self.save
  end
end
