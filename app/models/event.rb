class Event < ActiveRecord::Base
  has_many :submissions
  has_many :users, through: :submissions

  has_attached_file :bundle

  attr_accessible :title,
    :short_description, :long_description,
    :scheduled_at, :finalized_at

  validates :title, :short_description, presence: true
end
