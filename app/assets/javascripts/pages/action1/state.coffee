debug.info 'load App.State.Action1'

class App.State.Action1 extends Backbone.Model
  
  @trace initialize: () ->
    
    # Set
    App.Data.Pages.Action1 = { }
  
  @trace setLayout: (layout) ->

    App.Data.Pages.Action1.layout = layout
  
  @trace getLayout: () ->
  
    App.Data.Pages.Action1.layout  
    
  # Set the Collection of Things.
  # @things, App.Models.Thing, A Thing.
  @trace setThings: (things) ->
    
    App.Data.Pages.Action1.things = things
    
  # Retrieve the Collection of Things.
  @trace getThings: () ->
    
    App.Data.Pages.Action1.things
    
  # Set the ID of the Thing to delete to pass between Views/Events.
  # @id, String, The ID of the Thing to delete.
  @trace setThingIdToDelete: (id) ->
    
    App.Data.Pages.Action1.thingIdToDelete = id
    
  # Retreive the ID of the Thing to delete.
  @trace getThingIdToDelete: () ->
    
    App.Data.Pages.Action1.thingIdToDelete