debug.info 'load App.State.Action1'

class App.State.Action1 extends Backbone.Model
  
  @trace initialize: () ->
    
    # Set
    App.Data.Pages.Index = { }
  
  @trace setLayout: (layout) ->

    App.Data.Pages.Index.layout = layout
  
  @trace getLayout: () ->
  
    App.Data.Pages.Index.layout  