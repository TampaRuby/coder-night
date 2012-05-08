class User < ActiveRecord::Base
  has_many :submissions
  has_many :events, through: :submissions

  def self.with_omniauth(auth)
    user = where(oauth_provider: auth['provider'],
                      oauth_uid: auth['uid']).first
    return user if user

    create! do |user|
      user.oauth_provider = auth['provider']
      user.oauth_uid      = auth['uid']
      user.full_name      = auth['info']['name']
      user.twitter_handle = auth['info']['nickname']
    end
  end
end
