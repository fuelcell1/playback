debug.info 'load App.Views.Action2'

class App.Views.Action2 extends Backbone.Marionette.Layout

  template: '#template-action2'
  regions:
    contentRegion: '#region-content'
 
  events:
    'click button#do-test': 'test'
    
  @trace close: () ->
    
    @remove()
    @unbind()

  @trace test: (event) ->
    
class App.ItemViews.IndexPage1 extends Backbone.Marionette.ItemView

  template: '#template-index-page-1'
    
  close: () ->
    
    @remove()
    @unbind()

class App.ItemViews.Action2Page1Item extends Backbone.Marionette.ItemView

  template: '#template-index-page-1-item'
  
  @trace initialize: (options) ->
    
    @model.on 'change', @render
    
  close: () ->
    
    @remove()
    @unbind()
    
class App.CompositeViews.Action2Page1Items extends Backbone.Marionette.CompositeView
  
  template: '#template-index-page-1'
  collectionEl: 'div#index-things-collection-1'
  itemView: App.ItemViews.Index1Item
  
  @trace initialize: (options) ->
    
    @collection.on 'change', @render
  
  close: () ->
    
    @remove()
    @unbind()
  
  @trace appendHtml: (collectionView, itemView) ->
    
    collectionView.$(@collectionEl).append itemView.el