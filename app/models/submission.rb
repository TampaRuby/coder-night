class Submission < ActiveRecord::Base
  belongs_to :event
  belongs_to :user

  has_attached_file :archive

  attr_accessible :archive
end
