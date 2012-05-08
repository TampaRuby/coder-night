class Event < ActiveRecord::Base
  has_many :submissions
  has_many :users, through: :submissions

  has_attached_file :bundle
end
