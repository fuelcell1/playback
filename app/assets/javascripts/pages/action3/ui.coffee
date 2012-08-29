class App.UI.Action3
  
  constructor: () ->
    
    @someAlert ='div#some_alert'

  @trace showSomealert: () ->
    
    $(@someAlert).slideDown()