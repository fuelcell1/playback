# Holds the Marionette application.
window.Portal = { } 

# Holds the entire application. 
window.App = { } 

# Holds class references to all Helpers.
window.Helpers = { }

# Holds class references for app/pages to all Views, Events, UI, Errors, and states.
App.Config = { }
App.Views = { }
App.Events = { }
App.UI = { }
App.State = { }
App.Errors = { }

# Holds instantiated app references to global Config, Events, UI, Errors, and states.
App.Global = { }

# Holds instantiated page references to all Views, Events, UI, Errors, and states.
App.Pages = { }
App.Pages.Views = { }
App.Pages.Events = { }
App.Pages.UI = { }
App.Pages.State = { }

# Holds instantiated references to all Helpers.
App.Helpers = { }

# Holds class references to all Backbone Models (that are not considered Helpers).
App.Models = { }
# Holds class references to all Backbone Collections.
App.Collections = { }

# Holds class references to all Marionette Regions.
App.Regions = { } 
# Holds class references to all Marionette Layouts.
App.Layouts = { }
# Holds class references to all Marionette ItemViews.
App.ItemViews = { } 
# Holds class references to all Marionette CompositeViews.
App.CompositeViews = { } 

# Holds instantiated View references.
App.Rendered = { }

# Holds all global data at an application level.
App.Data = { } 
# Holds all global data at a page level.
App.Data.Pages = { }