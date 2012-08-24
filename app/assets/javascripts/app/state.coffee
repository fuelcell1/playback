debug.info 'load State'

class window.State extends Backbone.Model
  
  @trace initialize: () ->

  @trace setDefaultRegion: (region) ->
    
    App.Rendered.region = region  
    
  @trace getDefaultRegion: () ->

    App.Rendered.region

  @trace setDefaultLayout: (layout) ->

    App.Rendered.layout = layout
  
  @trace getDefaultLayout: () ->

    App.Rendered.layout
  
  @trace getSidebarRegion: () ->

    @getDefaultLayout().sidebarRegion
  
  @trace setSidebarLayout: (layout) ->

    App.RenderedLayouts.sideBarLayout = layout
  
  @trace getSidebarLayout: () ->

    App.RenderedLayouts.sideBarLayout
  
  @trace getNavbarRegion: () ->

    @getDefaultLayout().navbarRegion
  
  @trace getAuthRegion: () ->

    @getDefaultLayout().regionAuth
  
  @trace getContentRegion: () ->

    @getDefaultLayout().contentRegion
  
  @trace setAccount: (account) ->
  
    App.Data.account = account
  
  @trace getAccount: () ->
  
    App.Data.account

  @trace setThings: (things) ->
  
    App.Data.things = things
 
  @trace getThings: () ->
  
    App.Data.things
  
  @trace setGroups: (groups) ->
  
    App.Data.groups = groups
  
  @trace getGroups: () ->
  
    App.Data.groups

  @trace setGeofences: (geofences) ->
  
    App.Data.geofences = geofences

  @trace getGeofences: () ->
  
    App.Data.geofences

  @trace setRules: (rules) ->
  
    App.Data.rules = rules

  @trace getRules: () ->
  
    App.Data.rules
    
  @trace setSocket: (socket) ->
  
    App.Data.socket = socket
  
  @trace getSocket: () ->
  
    App.Data.socket 
    
  @trace setGeoLocation: (lat, lng) ->
    
    App.currentLocation = new App.Models.MapPoint
      lat: lat
      lng: lng
      
  @trace getGeoLocation: () ->

    App.currentLocation