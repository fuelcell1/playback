debug.info 'load App.Models.Thing'

class App.Models.Thing extends Backbone.Model
  
  defaults:
    name: 'n/a'
    extra: 'n/a'
  
  urlRoot: () ->
    '/thing'
    
  defaults:
    name: null
    
  @trace initialize: () ->
    
    @name = @attributes.name
    @extra = @attributes.extra
    
  @trace parse: (resp) ->
    
    debug.info 'resp: ' + JSON.stringify resp
    
    @id = resp.id
    @attributes.id = @id
    
    @name = resp.name
    @attributes.name = @name
    
    @extra = resp.extra
    @attributes.extra = @extra
    
    @