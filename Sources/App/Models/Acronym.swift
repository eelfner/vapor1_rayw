import Vapor

final class Acronym: Model {
    
    var id: Node?
    var exists = false
    var short: String
    var long: String
    
    init(short: String, long: String) {
        self.id = nil
        self.short = short
        self.long = long
    }
    init(node: Node, in context: Context) throws {
        id = try node.extract("id")
        short = try node.extract("short")
        long = try node.extract("long")
    }
    func makeNode(context: Context) throws -> Node {
        return try Node(node: [
            "id" : id,
            "short" : short,
            "long" : long
            ])
    }
    static func prepare(_ database: Database) throws {
        print("prepare entity = [\(Acronym.entity)]")
        try database.create(Acronym.entity, closure: { (tableCreator) in
            tableCreator.id()
            tableCreator.string("short")
            tableCreator.string("long")
        })
    }
    static func revert(_ database: Database) throws {
        try database.delete(Acronym.entity)
    }
}
