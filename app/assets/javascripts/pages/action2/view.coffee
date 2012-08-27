debug.info 'load App.Views.Action2'

class App.Views.Action2 extends Backbone.Marionette.Layout

  template: '#template-action2'
  regions:
    content: '#region-content'
 
  events:
    'click button#do-add_item': 'clickAddItem'
    
  @trace close: () ->
    
    # Disconnect the WebSocket on page close.
    App.Pages.State.Action2.getSocket().disconnect()
    
    @remove()
    @unbind()

  @trace clickAddItem: (event) ->
    
    App.Pages.Events.Action2.clickAddItem()
   
class App.ItemViews.Action2Item extends Backbone.Marionette.ItemView

  template: '#template-action2-item'
  
  @trace initialize: (options) ->
    
    @model.on 'change', @render
    
  close: () ->
    
    @remove()
    @unbind()
    
class App.CompositeViews.Action2Items extends Backbone.Marionette.CompositeView
  
  template: '#template-action2-items'
  collectionEl: 'div#items_collection'
  itemView: App.ItemViews.Action2Item
  
  @trace initialize: (options) ->
    
    @collection.on 'change', @render
  
  @trace close: () ->
    
    @remove()
    @unbind()
  
  @trace appendHtml: (collectionView, itemView) ->
    
    collectionView.$(@collectionEl).append itemView.el