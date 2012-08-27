debug.info 'load App.Views.Action1'

class App.Views.Action1 extends Backbone.Marionette.Layout

  template: '#template-action1'
  regions:
    content: '#region-content'
    
  events:
    'click button#do-add_thing': 'clickAddThing'
    'click button#do-remove_yes': 'clickRemoveYes'
    'click button#do-remove_no': 'clickRemoveNo'
    'click button.do-remove_thing': 'clickRemoveThing'
    
  @trace close: () ->
    
    @remove()
    @unbind()
    
  @trace clickAddThing: (event) ->
    
    App.Pages.Events.Action1.clickAddThing()

  @trace clickRemoveYes: (event) ->
    
    App.Pages.Events.Action1.clickRemoveYes()
    
  @trace clickRemoveNo: (event) ->
    
    App.Pages.Events.Action1.clickRemoveNo()
    
  @trace clickRemoveThing: (event) ->
    
    App.Pages.Events.Action1.clickRemoveThing $(event.target).data('id')
    
class App.ItemViews.Action1Thing extends Backbone.Marionette.ItemView

  template: '#template-action1-thing'
  
  @trace initialize: (options) ->
    
    @model.on 'change', @render
    
  close: () ->
    
    @remove()
    @unbind()
    
class App.CompositeViews.Action1Things extends Backbone.Marionette.CompositeView
  
  template: '#template-action1-things'
  collectionEl: 'tbody#things_collection'
  itemView: App.ItemViews.Action1Thing
  
  @trace initialize: (options) ->
    
    @collection.on 'change', @render
  
  close: () ->
    
    @remove()
    @unbind()
  
  @trace appendHtml: (collectionView, itemView) ->
    
    collectionView.$(@collectionEl).append itemView.el