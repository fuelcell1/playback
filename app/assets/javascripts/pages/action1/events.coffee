debug.info 'load App.Events.Action1'

class App.Events.Action1 extends Backbone.Model
  
  @trace initialize: () ->
      
  # Any checks that need to be done to show page.
  @trace continueToLoad: () ->
  
    return true 
  
  # Render the page.
  @trace doBeforeLayouts: () ->

    App.Pages.State.Action1.setLayout new App.Views.Action1()
    App.Global.State.getContentRegion().show App.Pages.State.Action1.getLayout()

  @trace renderPage1: () ->
  
    # Do page 1 related shit, like render another region with a model or collection.
    # App.Pages.Action1.Views.pageRegion.show 1
    # App.Pages.Action1.Globals.getLayout().pageRegion.show new App.CompositeViews.Action11(collection: App.Globals.getThings())
                     
  @trace router: (page) ->

    if !@continueToLoad()
      return
        
    @doBeforeLayouts()
    
    switch page
      when 1
        
        @renderPage1()