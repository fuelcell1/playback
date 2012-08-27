debug.info 'load App.State.Action2'

class App.State.Action2 extends Backbone.Model
  
  @trace initialize: () ->
    
    # Set
    App.Data.Pages.Action2 = { }
  
  @trace setLayout: (layout) ->

    App.Data.Pages.Action2.layout = layout
  
  @trace getLayout: () ->
  
    App.Data.Pages.Action2.layout  
    
  # Set the WebSocket connection.
  # @sockets, App.Models.Socket, A WebSocket connection.
  @trace setSocket: (socket) ->
    
    App.Data.Pages.Action2.socket = socket
    
  # Retrieve the persisted WebSocket connection.
  @trace getSocket: () ->
    
    App.Data.Pages.Action2.socket
    
  # Set the Collection of Items.
  # @items, App.Models.Item, An Item.
  @trace setItems: (items) ->
    
    App.Data.Pages.Action2.items = items
    
  # Retrieve the Collection of Items.
  @trace getItems: () ->
    
    App.Data.Pages.Action2.items