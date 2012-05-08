class CoderNight.Models.CurrentUser extends Backbone.Model
  url: 'user.json'

  isSignedIn: ->
    !@isNew()
