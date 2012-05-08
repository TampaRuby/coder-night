class CoderNight.Views.CurrentUser extends Backbone.View
  template: JST["current_user"]

  initialize: ->
    @model.bind('change', @render, this)

    # The change event doesn't fire if the user isn't logged in:
    @render() if !@model.isSignedIn()

  render: ->
    $(@el).html(@template(@model.toJSON()))
