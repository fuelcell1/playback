debug.info 'load App.Views.Action1'

class App.Views.Action1 extends Backbone.Marionette.Layout

  template: '#template-action1'
  regions:
    contentRegion: '#region-content'
    
  events:
    'click button#do-test': 'test'
    
  @trace close: () ->
    
    @remove()
    @unbind()

  @trace test: (event) ->

class App.ItemViews.Action1Page1 extends Backbone.Marionette.ItemView

  template: '#template-action1-page-1'
    
  close: () ->
    
    @remove()
    @unbind()