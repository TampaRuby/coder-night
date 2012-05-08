class User
  include Mongoid::Document

  field :oauth_provider
  field :oauth_uid
  field :name
  field :twitter_nickname

  def self.with_omniauth(auth)
    user = first(conditions: {
      oauth_provider: auth['provider'],
           oauth_uid: auth['uid']
    })
    return user if user

    create! do |user|
      user.oauth_provider   = auth['provider']
      user.oauth_uid        = auth['uid']
      user.name             = auth['info']['name']
      user.twitter_nickname = auth['info']['nickname']
    end
  end
end
