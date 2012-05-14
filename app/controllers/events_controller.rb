class EventsController < InheritedResources::Base
  load_and_authorize_resource
  custom_actions resource: [:roster]

  def roster

  end
end
