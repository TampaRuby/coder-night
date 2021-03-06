class User < ActiveRecord::Base
  has_many :submissions
  has_many :events, through: :submissions

  attr_accessible :full_name, :twitter_handle

  before_create :auto_create_admin

  def auto_create_admin
    if User.count.zero? && Rails.env.development?
      self.is_admin = true
    end
  end

  def self.find_or_create_with_omniauth(auth)
    find_with_omniauth(auth) || create_with_omniauth(auth)
  end

  def self.find_with_omniauth(auth)
    where(oauth_provider: auth['provider'], oauth_uid: auth['uid']).first
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.oauth_provider = auth['provider']
      user.oauth_uid      = auth['uid']
      user.full_name      = auth['info']['name']
      user.twitter_handle = auth['info']['nickname']
    end
  end
end
