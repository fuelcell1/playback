debug.info 'load app'

# Routes
# Specify defined method on the right from the window.Routes() class.
# Left-hand assignment must match class names, e.g. action3 => class Action3
ROUTES =
  'action1/:page': 'standardRouter'
  'action2/:page': 'standardRouter'
  '*path': 'defaultRouter'
  
# App.
App.Global.Events = new Events()
App.Global.UI = new UI()
App.Global.State = new State()
App.Global.Errors = new Errors()

# Helpers.
App.Helpers.Compatibility = new Helpers.Compatibility()
App.Helpers.Collections = new Helpers.Collections()

# Geolocation.
if !App.Helpers.Compatibility.isIE()
  App.Global.Events.geoLocate()
  
# Start Marionette.
App.Portal = new Backbone.Marionette.Application()
App.Portal.start { } # Don't pass it anything

# Setup default Marionette Layouts/Regions.
App.Global.State.setDefaultRegion new App.Regions.Default()
App.Global.State.setDefaultLayout new App.Layouts.Default()

# Render the application HTML wireframe.
App.Global.State.getDefaultRegion().show App.Global.State.getDefaultLayout()
App.Global.State.getNavRegion().show new App.Views.Nav()

# Start Backbone history.
App.Router = new Routes(
  routes: ROUTES
)
App.Router.setDefaultRoute 'action1/1'
Backbone.history.start()