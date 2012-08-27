debug.info 'load App.UI.Action1'

class App.UI.Action1 
  
  constructor: () ->
    
    @removeSuccessAlert ='div#remove_success_alert'
    @removeFailAlert = 'div#remove_fail_alert'
    @removeVerifyAlert = 'div#remove_verify_alert'
    @removeYes = 'button#do-remove_yes'
    @removeNo ='button#do-remove_no'
    @noThings = 'div#no_things'
    @thingsCollectionContainer = 'table#things_collection_container'
    
  @trace showRemoveVerifyAlert: () ->
    
    $(@removeVerifyAlert).slideDown()
    
  @trace hideRemoveVerifyAlert: () ->
    
    $(@removeVerifyAlert).slideUp()
    
  @trace showRemoveSuccessAlert: () ->
    
    $(@removeSuccessAlert).slideDown()
    
  @trace hideRemoveSuccessAlert: () ->
    
    $(@removeSuccessAlert).slideUp()
    
  @trace showRemoveFailAlert: () ->
    
    $(@removeFailAlert).slideDown()
    
  @trace hideRemoveFailAlert: () ->
    
    $(@removeFailAlert).slideUp()
   
  @trace showNoThings: () ->
    
    $(@noThings).show()
    $(@thingsCollectionContainer).hide()
    
  @trace hideNoThings: () ->
    
    $(@noThings).hide()
    $(@thingsCollectionContainer).show()