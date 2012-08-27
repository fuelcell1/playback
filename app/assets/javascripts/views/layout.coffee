debug.info 'load App.Layouts.Default'

class App.Layouts.Default extends Backbone.Marionette.Layout

  template: '#template-layout'
  
  regions:
    contentRegion: '#region-content'
    navRegion: '#region-nav'
    
  @trace initialize: () ->
   
