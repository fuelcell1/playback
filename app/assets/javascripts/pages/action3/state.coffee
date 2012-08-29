class App.State.Action3 extends Backbone.Model
  
  @trace initialize: () ->
    
    # Set
    App.Data.Pages.Action3 = { }
  
  @trace setLayout: (layout) ->

    App.Data.Pages.Action3.layout = layout
  
  @trace getLayout: () ->
  
    App.Data.Pages.Action3.layout  
