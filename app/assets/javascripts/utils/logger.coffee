class Logger
  
  constructor: () ->
    if !@shouldLog(@getWindowParam('log'))
      @dontLog()
  
  # Don't prepend @trace.
  # @paramName, String, Return the value from a specified URL parameter.
  getWindowParam: (paramName) ->
    sURL = window.document.URL.toString()
    if sURL.indexOf('?') > 0
      arrParams = sURL.split('?')
      arrURLParams = arrParams[1].split('&')
      arrParamNames = new Array(arrURLParams.length)
      arrParamValues = new Array(arrURLParams.length)
      i = 0
      i = 0
      while i < arrURLParams.length
        sParam = arrURLParams[i].split('=')
        arrParamNames[i] = sParam[0]
        unless sParam[1] is ''
          arrParamValues[i] = unescape(sParam[1])
        else
          arrParamValues[i] = 'No Value'
        i++
      i = 0
      while i < arrURLParams.length
        return arrParamValues[i]  if arrParamNames[i] is paramName
        i++
      false

  # Don't prepend @trace.
  # Check if we should log based on GET parameters.
  # @getWindowParams, [], An array of parameters that are in the 
  shouldLog: (param) ->
    
    shouldLog = false
    
    try 
      if param.indexOf('true') isnt -1
        shouldLog = true
    catch error 
      shouldLog = false
        
    shouldLog
    
  # Don't prepend @trace.
  # Turn off logging.
  dontLog: () ->
    
    debug.setLevel 0

new Logger()