debug.info 'load app'

# Routes
# Specify defined method on the right from the window.Routes() class.
ROUTES =
  'index/:page': 'index'
  'geofences/:page': 'geofences'
  '*path': 'default' # Default
  
# Helpers.
App.Helpers.Compatibility = new App.Helpers.Compatibility()
App.Helpers.Maps = new App.Helpers.Maps()
App.Helpers.Collections = new App.Helpers.Collections()

# App.
App.Global.Config = new Config()
App.Global.Events = new Events()
App.Global.UI = new UI()
App.Global.State = new State()
App.Global.Errors = new Errors()

# Start Marionette.
App.Portal = new Backbone.Marionette.Application()
App.Portal.start { } # Don't pass it anything

# Setup default Marionette Layouts/Regions.
App.Global.State.setDefaultRegion new App.Regions.Default()
App.Global.State.setDefaultLayout new App.Layouts.Default()

# Render the application HTML wireframe.
App.Global.State.getDefaultRegion().show App.Global.State.getDefaultLayout()

# Start Backbone history.
App.Router = new Routes(routes: ROUTES)
Backbone.history.start()