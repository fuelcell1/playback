class App.Views.Action3 extends Backbone.Marionette.Layout

  template: '#template-action3'
  regions:
    content: '#region-content'

  @trace close: () ->
    
    @remove()
    @unbind()