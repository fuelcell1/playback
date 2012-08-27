debug.info 'load Helpers.Compatibility'

class Helpers.Compatibility extends Backbone.Model

  ie: false
  ieVersion: null
    
  @trace initialize: () ->
    
    @ie = @attributes.ie
    @ieVersion = @attributes.ieVersion
       
  # Check if browser type is Internet Explorer.
  @trace isIE: () ->
    
    @ie = (navigator.appName is 'Microsoft Internet Explorer')
    
    @ie
    
  # Return the Internet Explorer version.
  @trace getIEVersion: () ->
    
    @ieVersion = navigator.appVersion
    @ieVersion = parseInt(@ieVersion.substr(@ieVersion.indexOf('MSIE') + 4))
    
    @ieVersion
