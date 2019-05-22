class Event < ApplicationRecord
  has_many :registrations

  validates :title, :price, :event_date, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :description, length: { minimum: 30}
  validates :title, uniqueness: { case_sensitive: true}

  has_attached_file :images, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :images, content_type: /\Aimage\/.*\z/

  def free?
    price.blank? || price.zero?
  end
end
