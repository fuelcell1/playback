debug.info 'load Helpers.Collections'

class Helpers.Collections extends Backbone.Model
  
  @trace initialize: () ->
  
  # Clone a collection, as Backbone does not provide this.
  # @newCollection, Backbone.Collection, The new cloned collection to return (e.g. new Backbone.Collection())
  # @collection, Backbone.Collection, The collection to clone.
  @trace clone: (newCollection, collection) ->

    collection.each (model) =>
      newCollection.add model
      
    newCollection
    
  # Update a model in a collection via a .where(clause: 'key'), or simply remove and replace.
  # @model, Backbone.Model, The model to update.
  # @collection, Backbone.Collection, The collection to modify.
  # @where, Optional[String], The model attribute to search on.
  # @key, Optional[String], The model attribute value to match on.
  @trace updateModel: (model, collection, where, key) ->
    
    if where is undefined || key is undefined
      debug.info 'simple update'
      
      collection.remove model
      collection.add model
      
      return collection
    
    clause = { }
    clause[where] = key
    
    _.each collection.where(clause), (modelToUpdate) =>
      collection.remove modelToUpdate
    collection.add model
    
    collection
     
  # Sort a collection based on a model attribute.
  # @key, String, The model attribute to sort on. 
  # @collection, Backbone.Collection, The collection to sort.
  @trace setAndSortByComparator: (key, collection) =>
    
    collection.comparator = (model) =>
      model.get key
      
    collection.sort()