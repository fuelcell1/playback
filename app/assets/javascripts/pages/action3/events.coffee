class App.Events.Action3 extends Backbone.Model
  
  @trace initialize: () ->
      
  # Any checks that need to be done to show page.
  @trace continueToLoad: () ->
  
    return true 
  
  # Render the page.
  @trace doBeforeLayouts: () ->

    App.Pages.State.Action3.setLayout new App.Views.Action3()
    App.Global.State.getContentRegion().show App.Pages.State.Action3.getLayout()

  @trace renderPage1: () ->
  
    # Add data if you wish.
    
  @trace router: (page) ->

    if !@continueToLoad()
      return
        
    @doBeforeLayouts()
    
    switch page
      when 1
        
        @renderPage1()
        
  # Non-render methods
  
  @trace doSomething: (event) ->    

    App.Pages.UI.Action3.showSomeAlert()