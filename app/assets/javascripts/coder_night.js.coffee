window.CoderNight =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    CoderNight.currentUser = new CoderNight.Models.CurrentUser
    CoderNight.currentUser.fetch()

    new CoderNight.Views.CurrentUser
      model: CoderNight.currentUser
      el: $('#session')

$(document).ready ->
  CoderNight.init()

