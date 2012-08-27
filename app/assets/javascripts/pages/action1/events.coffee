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
  
    things = new App.Collections.Things()
    
    # Allow Collection to update on model.fetch() return
    App.Pages.State.Action1.setThings things

    things.fetch()
    
    # Render
    App.Pages.State.Action1.getLayout().content.show new App.CompositeViews.Action1Things(
      collection: App.Pages.State.Action1.getThings()
    )
    
  @trace router: (page) ->

    if !@continueToLoad()
      return
        
    @doBeforeLayouts()
    
    switch page
      when 1
        
        @renderPage1()
        
  # Non-render methods
  
  @trace clickAddThing: (event) ->
      
    # Remove the "no models in collection" warning.
    if App.Pages.State.Action1.getThings().length is 0
      App.Pages.UI.Action1.hideNoThings()
    
    # Simulate adding Thing.
    id = Math.floor (Math.random() * 500) + 1
    
    App.Pages.State.Action1.getThings().add new App.Models.Thing(
      id: id
      name: 'thing' + id
      extra: 'extra' + id
    )
    
  @trace clickRemoveYes: () ->
    
    _.each App.Pages.State.Action1.getThings().where(id: App.Pages.State.Action1.getThingIdToDelete()), (thing) =>
      
      # Normally, delete from the data source, than decide
      # on what alert to show.
      
      # thing.remove()
      
      App.Pages.State.Action1.getThings().remove thing
   
      # Update alerts.
      App.Pages.UI.Action1.hideRemoveVerifyAlert()
      App.Pages.UI.Action1.showRemoveSuccessAlert()
      
      setTimeout (->
        App.Pages.UI.Action1.hideRemoveSuccessAlert()
      ), 500

      # Show "no models in collection" warning.
      if App.Pages.State.Action1.getThings().length is 0
        App.Pages.UI.Action1.showNoThings()
    
  @trace clickRemoveNo: () ->
    
    App.Pages.UI.Action1.hideRemoveVerifyAlert()
    
  @trace clickRemoveThing: (id) ->
    
    App.Pages.State.Action1.setThingIdToDelete id
    
    App.Pages.UI.Action1.showRemoveVerifyAlert()