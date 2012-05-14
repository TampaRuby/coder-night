class SubmissionsController < InheritedResources::Base
  load_and_authorize_resource except: [:create]
  belongs_to :event

  def create_resource(object)
    object.user = current_user
    authorize! :create, object # authorize after assigning user
    super
  end
end
