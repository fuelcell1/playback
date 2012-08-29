class App.Views.Action3 extends Backbone.Marionette.Layout

  template: '#template-action3'
  regions:
    content: '#region-content'

  events:
    'click button#do-something': 'doSomething'

  @trace doSomething: (event) ->

    App.Pages.Events.Action3.doSomething()

  @trace close: () ->    
    @remove()
    @unbind()
    