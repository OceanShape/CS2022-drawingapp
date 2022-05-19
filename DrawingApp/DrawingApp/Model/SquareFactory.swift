class SquareFactory {
    let idElement: String = "abcdefghijklmnopqrstuvwxyz0123456789"
    
    func createSquare(id: String, size: Size, position: Position, backgroundColor: Color, Alpha: Int) -> Square {
        
        return Square(id: createRandomId(), size: size, position: position, backgroundColor: backgroundColor, Alpha: Alpha)
    }

    func createRandomId() -> String {
        var id = String((0 ..< 9).map{ _ in idElement.randomElement()! })
        id.insert("-", at: id.index(id.startIndex, offsetBy: 3))
        id.insert("-", at: id.index(id.startIndex, offsetBy: 7))
        return id
    }
}
