debug.info 'load App.Collections.Items'

class App.Collections.Items extends Backbone.Collection
  
  model: App.Models.Item
  
  @trace initialize: () ->
  
