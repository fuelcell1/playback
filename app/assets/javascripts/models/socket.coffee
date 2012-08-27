debug.info 'load window.App.Models.Socket'

class App.Models.Socket extends Backbone.Model

  defaults:
    connection: null
    isConnected: false
    retry: true
    retryPeriod: 5
    onMessageCallback: null
   
  @trace initialize: () ->
    
    @connection = @attributes.connection
    @isConnected = @attributes.isConnected
    @retry = @attributes.retry
    @retryPeriod = @attributes.retryPeriod
    
    @url = 'ws://localhost:9000/socket'
    
    debug.info 'socket request: ' + @url
    
    @onMessageCallback = @attributes.onMessageCallback
    
    @connect()
    
  @trace isConnected: () ->
    
    if !@connection
      @connected = false
      
  @trace connect: () ->
    
    if @isConnected
      @disconnect()
      
    debug.info 'trying connection: ' + @url
      
    if typeof WebSocket isnt 'undefined'
      @connection = new WebSocket @url
    else
      @connection = new MozWebSocket @url

    @connection.onopen = () =>
      
      debug.info 'socket connection opened'
      
      @isConnected = true
     
    @connection.onmessage = (evt) =>   
    
      @messageArrived evt.data
     
    @connection.onclose = () =>
      
      debug.info 'socket connection closed'
      
      if @retry
        setTimeout (=>
          @connect()
        ), 1000 * @retryPeriod
      
    @connection.onerror = (error) =>
      
      debug.info 'socket error: ' + error
    
  @trace disconnect: () ->
    
    @retry = false
    
    try
      @connection.close()
      @connection = null
    catch error
      debug.info 'error disconnecting'
    
  @trace send: (message) ->
    
    @connection.send message
    
  @trace messageArrived: (data) ->
    
    debug.info 'rcved message: ' + data
    
    @onMessageCallback data