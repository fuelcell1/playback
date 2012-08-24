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
  
    # App.Pages.Action2.Views.pageRegion.show 1
    # App.Pages.Action2.Globals.getLayout().pageRegion.show new App.CompositeViews.Action21(collection: App.Globals.getThings())
                     
  @trace router: (page) ->

    if !@continueToLoad()
      return
        
    @doBeforeLayouts()
    
    switch page
      when 1
        
        @renderPage1()