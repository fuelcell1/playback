debug.info 'load App.Events.Action2'

class App.Events.Action2 extends Backbone.Model
  
  @trace initialize: () ->
      
  # Any checks that need to be done to show page.
  @trace continueToLoad: () ->
  
    return true 
  
  # Render the page.
  @trace doBeforeLayouts: () ->

    App.Pages.State.Action2.setLayout new App.Views.Action2()
    App.Global.State.getContentRegion().show App.Pages.State.Action2.getLayout()

  @trace renderPage1: () ->
    
    # Websocket connection.
    App.Pages.State.Action2.setSocket new App.Models.Socket(
      onMessageCallback: (data) =>
        @addItemFromWebSocket data
    )
    
    # Simulate adding Items
    items = new App.Collections.Items()
    
    items.add new App.Models.Item(
      id: Math.floor((Math.random() * 500) + 1)
    )
    
    App.Pages.State.Action2.setItems items
       
    # Render
    App.Pages.State.Action2.getLayout().content.show new App.CompositeViews.Action2Items(
      collection: App.Pages.State.Action2.getItems()
    )
    
  @trace router: (page) ->

    if !@continueToLoad()
      return
        
    @doBeforeLayouts()
    
    switch page
      when 1
        
        @renderPage1()
        
  # Non-render methods
        
  @trace clickAddItem: (event) ->
    
    # Simulate adding Item.
    id = Math.floor (Math.random() * 500) + 1
    
    App.Pages.State.Action2.getSocket().send '{"id":' + id + '}'
    
  @trace addItemFromWebSocket: (item) ->
    
   debug.info 'item: ' + item
   
   App.Pages.State.Action2.getItems().add new App.Models.Item(
     id: JSON.parse(item).id
   )