debug.info 'load Events'

class window.Events extends Backbone.Model
  
  @trace initialize: () ->
    
  @trace geoLocate: () ->

    navigator.geolocation.getCurrentPosition(
      (position) =>
        App.Globals.setGeoLocation position.coords.latitude, position.coords.longitude
    ) 