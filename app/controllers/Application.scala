package controllers

import play.api._
import play.api.mvc._

object Application extends Controller {

  /* Backbone.js application */
  def index = Action {
    Ok(views.html.app.render())
  }
  /* Example collection response */
  def things = Action {
    Ok("""[{"id":1,"name":"thing1"},{"id":2,"name":"thing2"}]""")
  }

  /* Example model response */
  def thing(id: Int) = Action {
    id match {
      case 1 => Ok("""{"id":1,"name":"thing1","extra":"extra1"}""")
      case 2 => Ok("""{"id":2,"name":"thing2","extra":"extra2"}""")
    }
  }
  
}