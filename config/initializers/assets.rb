Skim::Engine.default_options[:use_asset] = true

Rails.application.assets.context_class.instance_eval do
  include ActionView::Helpers::UrlHelper
  include Rails.application.routes.url_helpers
end
