struct Plane {
    var squareList: [Square] = []
    
    init() {}
    
    mutating func addSquare(square: Square) {
        self.squareList.append(square)
    }
    
    func findSquare(touchedPosition: Position) -> Square? {
        for square in squareList.reversed() {
            if square.isIncluded(position: touchedPosition) {
                return square
            }
        }
        return nil
    }
    
    var total: Int {
        get {
            return self.squareList.count
        }
    }
    
    subscript(index: Int) -> Square? {
        guard(0..<self.squareList.count).contains(index) else {
            return nil
        }
        return squareList[index]
    }
}
