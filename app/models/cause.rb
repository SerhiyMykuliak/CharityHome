class Cause < ApplicationRecord
  has_one_attached :cause_picture
  has_rich_text :content
  has_many :donations

  validates :title, presence: true, length: {minimum:4, maximum:60}
  validates :description, presence: true, length: {minimum:20}
  validates :donated_amount, presence: true, numericality: true
  validates :goal_amount, presence: true, numericality: true
  validates :cause_picture, attached: true, content_type: ['image/png', 'image/jpeg', 'image/jpg']

  def total_donations_amount
    donations.sum(:amount)
  end

  def total_donations_count
    donations.count
  end
end
