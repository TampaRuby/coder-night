class Submission < ActiveRecord::Base
  belongs_to :event
  belongs_to :user

  attr_accessible :archive

  has_attached_file :archive

  before_create :generate_uid

  def generate_uid
    self.uid = RandomWord.phrases.next.gsub(/\W|_/, '-')
  end
end
