debug.info 'load App.Models.Item'

class App.Models.Item extends Backbone.Model
    
  defaults:
    id: null
    data: { }
    
  @trace initialize: () ->
    
    @id = @attributes.id
    @data = @attributes.data
