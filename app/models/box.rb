require 'rqrcode'

class Box < ApplicationRecord
  include Rails.application.routes.url_helpers
  has_attached_file :qr

  validates_uniqueness_of :title
  validates_attachment_content_type :qr, :content_type => /\Aimage\/.*\Z/

  after_commit :generate_qr, unless: :has_qr?

  private
  def generate_qr
    path = Rails.root.join("tmp", "#{SecureRandom.uuid}.png")
    qr_text = Rails.application.routes.url_helpers.box_url(self, host: ENV['ROOT_URL'])
    qrcode = RQRCode::QRCode.new(qr_text)
    png = qrcode.as_png(file: path, size: 350, border_modules: 0)
    update_qr(path)
  end

  def update_qr(path)
    self.qr = File.open(path)
    self.save!
    remove_file(path)
  end

  def remove_file(path)
    File.delete(path)
  end

  def has_qr?
    !self.qr.url.match?("missing")
  end
end
