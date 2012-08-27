debug.info 'load Routes'
  
class window.Routes extends Backbone.Marionette.AppRouter
   
  constructor: (options) ->
     
    @on 'all', @storeRoute
    @history = []
    super options
    
  @trace initialize: () ->
    
    debug.info 'Routes: ' + JSON.stringify @routes
    
  @trace setDefaultRoute: (route) ->
    
    App.Data.defaultRoute = route
    
  @trace getDefaultRoute: () ->
    
    App.Data.defaultRoute
    
  @trace storeRoute: () ->
    
    @history.push Backbone.history.fragment

  @trace getPrevious: () ->
    
    if @history.length > 1
      @history[@history.length - 1] 
      
  @trace getPreviousRoute: () ->
    
    @getPrevious().split('/')[0]
    
  @trace getPreviousPage: () ->
     
    @getPrevious().split('/')[1]

  @trace getFormattedWindowHash: () ->
    
    hash = window.location.hash
    hash = hash.substring(1, hash.length) 
    
    hash

  @trace getCurrentRoute: () ->
    
    current = @getFormattedWindowHash().split('/')[0]

    # Allow us to not specify 'route = <route>' inside every routing method.
    if !current
      current = @getDefaultRoute()
    else
      current = current

    current = current.charAt(0).toUpperCase() + current.slice(1)    
    
  @trace getCurrentPage: () ->
    
    @getFormattedWindowHash().split('/')[1]
  
  # Before we hit a route...
  @trace isAuthed: () ->

    return true
         
  # When we reload, we can check for auth and redirect for somewhere else. 
  # @route, String, The page being loaded, e.g. <page>/1
  @trace onStandardPageLoad: (route) ->
    
    if !@isAuthed()
      return
      
    @setupPage route

  # Everytime a page is loaded, default data is cleared by instantiating new 
  # Views, Events, UI, State, and Error classes.
  @trace setupPage: (page) ->
    
    route = @getCurrentRoute()
    
    debug.info 'current route: ' + route
       
    event = 'App.Pages.Events.' + route + ' = new App.Events.' + route + '()'
    debug.info 'eval event: ' + event
    
    eval event
    
    ui = 'App.Pages.UI.' + route + ' = new App.UI.' + route + '()'
    debug.info 'eval ui: ' + ui
    
    eval ui
    
    state = 'App.Pages.State.' + route + ' = new App.State.' + route + '()'
    debug.info 'eval state: ' + state
    
    eval state
    
    # The magic which routes to the page.
    goTo = 'App.Pages.Events.' + route + '.router(parseInt(' + page + '))'
    debug.info 'goTo: ' + goTo
    
    eval goTo
    
  # Place routing actions below.
    
  # Action1 Page.
  # @page, String, The page being loaded.
  @trace action1: (page) ->

    @onStandardPageLoad page

  # Action2 Page.
  # @page, String, The page being loaded.
  @trace action2: (page) ->

    @onStandardPageLoad page

  # Default route.
  @trace default: () ->
    
    # TODO make this eval-able?
    @action1 1