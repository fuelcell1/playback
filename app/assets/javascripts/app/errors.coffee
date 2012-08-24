debug.info 'load Errors'

class window.Errors extends Backbone.Model
  
  errors: { }
  
  @trace initialize: () ->
    
    @errors = @attributes.errors
    
    @errors[0] = 'Something went really fucking wrong :('
