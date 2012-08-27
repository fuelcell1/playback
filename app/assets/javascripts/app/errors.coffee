debug.info 'load Errors'

class window.Errors extends Backbone.Model
  
  errors: 
    0: 'Something went really fucking wrong :('
    
  @trace initialize: () ->