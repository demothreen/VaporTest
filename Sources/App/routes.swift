import Vapor
import Leaf

func routes(_ app: Application) throws {
  app.get { req in
    return "It works!"
  }

  app.on(.GET, "hello", "vapor") { req -> String in
    return "Hello, VAPOR!"
  }

  app.get("hello") { req -> EventLoopFuture<View> in
    return req.view.render("hello", ["name": "Leaf"])
  }

}
