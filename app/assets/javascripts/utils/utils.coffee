# All overrides (Prototype) go below.
      
# Allow logging of class methods and arguments (but not constructors).
# TODO Doesn't seem to work in IE?
# Example:
# class MyClass
#   @trace methodA: ->
#     ...do stuff
Function::trace = do () ->
  makeTracing = (ctorName, fnName, fn) ->
    (args...) ->
      debug.info "#{ctorName} -> #{fnName}"
      fn.apply @, args
  (arg) ->
    for own name, fn of arg 
      @prototype[name] = makeTracing @name, name, fn