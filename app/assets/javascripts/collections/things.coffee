debug.info 'load App.Collections.Things'

class App.Collections.Things extends Backbone.Collection
  
  url: '/things'
  model: App.Models.Thing
  
  @trace initialize: () ->
    
  # Override response to get more detailed information about thing.
  @trace parse: (resp) ->

    things = []
    
    _.each resp, (item) =>
      
      # Fetch detailed information about thing
      thing = new App.Models.Thing(
        id: item.id
        name: item.name
      )
   
      thing.fetch()
      
      things.push thing
      
    things
    
    
  
