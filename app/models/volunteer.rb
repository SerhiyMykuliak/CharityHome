class Volunteer < ApplicationRecord
  has_one_attached :profile_picture

  
  validates :name, presence: true, length: {minimum:2, maximum:20}
  validates :job, presence: true
  validates :description, presence: true, length: {minimum:20, maximum:1000}
  validates :facebook_url, format: { with: /\A(http|https):\/\/(www\.)?facebook\.com\/?.*\z/, message: "must be a valid Facebook URL" }, allow_blank: true
  validates :twitter_url, format: { with: /\A(http|https):\/\/(www\.)?x\.com\/?.*\z/, message: "must be a valid Twitter URL" }, allow_blank: true
  validates :linkedin_url, format: { with: /\A(http|https):\/\/(www\.)?linkedin\.com\/?.*\z/, message: "must be a valid LinkedIn URL" }, allow_blank: true

  validates :profile_picture, attached: true, content_type: ['image/png', 'image/jpeg', 'image/jpg']

end
