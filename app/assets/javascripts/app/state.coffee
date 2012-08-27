debug.info 'load State'

class window.State extends Backbone.Model
  
  @trace initialize: () ->

  # Set default application region. 
  # Everything is placed within this div.
  # @region, Marionette.Region, The main application region. 
  @trace setDefaultRegion: (region) ->
    
    App.Rendered.region = region  
    
  # Get default application region.
  @trace getDefaultRegion: () ->

    App.Rendered.region

  # Set default application layout.
  # This layout holds all major regions of app (menu, content, etc.).
  # @layout, Marionette.Layout, The main application layout.
  @trace setDefaultLayout: (layout) ->

    App.Rendered.layout = layout
  
  # Get the default application layout, normally
  # to reference the contentRegion.
  @trace getDefaultLayout: () ->

    App.Rendered.layout
  
  # Return a quicker reference to the main 
  # content region of the application.
  @trace getContentRegion: () ->

    @getDefaultLayout().contentRegion
   
  # Return a quicker reference to the main 
  # nav region of the application.
  @trace getNavRegion: () ->

    @getDefaultLayout().navRegion
    
  # If not IE, get an idea of the user's location.
  # @lat, String?, User's latitude.
  # @lng, String?, User's longitude.
  @trace setGeoLocation: (lat, lng) ->
    
    debug.info 'lat: ' + lat
    debug.info 'lng: ' + lng
     
    App.Data.geoLocation = 
      lat: parseFlaot(lat)
      lng: parseFloat(lng)

  # If not IE, Retrieve the user's location.
  @trace getGeoLocation: () ->

    App.Data.geoLocation