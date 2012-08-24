debug.info 'load App.State.Action2'

class App.State.Action2 extends Backbone.Model
  
  @trace initialize: () ->
    
    # Set
    App.Data.Pages.Action2 = { }
  
  @trace setLayout: (layout) ->

    App.Data.Pages.Action2.layout = layout
  
  @trace getLayout: () ->
  
    App.Data.Pages.Action2.layout  