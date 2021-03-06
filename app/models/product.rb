require 'securerandom'
class Product < ApplicationRecord
  audited
  validates :name, :price, presence: true
  belongs_to :company
  before_create :generate_token

  private

  def generate_token
    self.token = SecureRandom.hex(20)
  end
end
