package controllers

import play.api.libs.iteratee._
import play.api.mvc.WebSocket
import play.api.mvc.Controller

object Socket extends Controller {

  def echo = WebSocket.using[String] { request =>
    val out = Enumerator.imperative[String]()
    val in = Iteratee.foreach[String](out.push(_)).mapDone(_ => println("WebSocket disconnected"))
    (in, out)
  }

}