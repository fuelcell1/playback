debug.info 'load App.Views.Nav'

class App.Views.Nav extends Backbone.Marionette.Layout

  template: '#template-nav'
    
  events:
    'click a#do-action1': 'clickAction1'
    'click a#do-action2': 'clickAction2'
       
  @trace initialize: () ->
    
  @trace clickAction1: (event) ->
    
    App.Router.navigate 'action1/1', true
    
  @trace clickAction2: (event) ->
    
    App.Router.navigate 'action2/1', true
