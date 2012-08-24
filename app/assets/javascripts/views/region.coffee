debug.info 'load App.Regions.Default'

class App.Regions.Default extends Backbone.Marionette.Region
  
  el: '#default-region'
  
  @trace initialize: () ->