debug.info 'load App.Errors.Action2'

class App.Errors.Action2 extends Backbone.Model
  
  errors: { }
  
  @trace initialize: () ->
    
    @errors = @attributes.errors
    
    @errors[0] = 'Something went wrong :('
