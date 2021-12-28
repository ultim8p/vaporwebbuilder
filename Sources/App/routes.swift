import Vapor


/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "It works!"
    }
    
    func getHome(req: Request) throws -> Future<View> {
        let mainPage = RWPage(lang: "en")
        
//        let head = RFHeaderProfile(in: mainPage, src: "https://i.imgur.com/itElfV3.jpg", username: "@risefit")
        
        let cont = RFCardsColl(in: mainPage, color: RWColor.rfPrimary2)
        
        let mainPageString = mainPage.buildPrimitive() ?? ""
        print("HTML: \(mainPageString)")
        let view = View(data: mainPageString.data(using: .utf8) ?? Data())
        return req.eventLoop.newSucceededFuture(result: view)
    }
    router.get("home", use: getHome)
    
    
    
    // Basic "Hello, world!" example
    router.get("hello") { req in
        
        return View.init(data: "<!DOCTYPE html><html lang=\"en\"> <head> <meta charsset=\"UTF-8\"> <title>Example document</title> </head> <body> <p style=\"text-align:center; color:red\">This is some text.</p> </body> </html>".data(using: .utf8) ?? Data())
        /*
        let sizeString = """
    /"
    <!DOCTYPE html>
    <html lang="en">
    <head>
    <meta charsset="UTF-8">
    <title>Example document</title>
    </head>
    <body>
    <p>This is some text.</p>
    </body>
    </html>
       /".html
    """
        return View(data: sizeString.data(using: String.Encoding.utf8))
        */
    }

    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}
