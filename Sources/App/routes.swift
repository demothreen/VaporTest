import Vapor

func routes(_ app: Application) throws {
  app.get { req in
    return "It works!"
  }

  app.on(.GET, "hello", "vapor") { req -> String in
    return "Hello, VAPOR!"
  }
}
