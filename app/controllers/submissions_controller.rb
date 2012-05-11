class SubmissionsController < InheritedResources::Base
  load_and_authorize_resource
  belongs_to :event
end
