debug.info 'load App.Errors.Action1'

class App.Errors.Action1 extends Backbone.Model
  
  errors: { }
  
  @trace initialize: () ->
    
    @errors = @attributes.errors
    
    @errors[0] = 'Something went wrong :('
