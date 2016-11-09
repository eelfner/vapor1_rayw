import Vapor
import VaporPostgreSQL
import VaporMySQL

let drop = Droplet()

//try drop.addProvider(VaporPostgreSQL.Provider)
try drop.addProvider(VaporMySQL.Provider)

drop.get("version") { request in
    if let db = drop.database?.driver as? PostgreSQLDriver {
        let dbVersion = try db.raw("select version()")
        return try JSON(node: dbVersion)
    }
    else if let db = drop.database?.driver as? MySQLDriver {
        let dbVersion = try db.raw("select version()")
        return try JSON(node: dbVersion)
        // Doesn't work 
        //let strVersion = dbVersion.object?.allItems[0].1.string ?? "Unknown"
        //return "MySQL version: \(strVersion)"
    }
    else {
        return "No Postgres DB connection"
    }
}

drop.get { req in
    return try drop.view.make("welcome", [
    	"message": drop.localization[req.lang, "welcome", "title"]
    ])
}

drop.resource("posts", PostController())

drop.run()
