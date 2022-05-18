import Foundation

class Square: CustomStringConvertible {
    var description: String {
        return "(\(self.id), X:\(self.position.x),Y:\(self.position.y), W\(self.size.width), H\(self.size.height), R:\(self.backgroundColor.R), G:\(self.backgroundColor.G), B:\(self.backgroundColor.B), Alpha: \(self.Alpha))"
    }
    
    private let id: String
    private let size: Size
    private let position: Position
    private let backgroundColor: Color
    private let Alpha: Int
    
    init(id: String, size: Size, position: Position, backgroundColor: Color, Alpha: Int) {
        self.id = id
        self.size = size
        self.position = position
        self.backgroundColor = backgroundColor
        
        switch Alpha {
        case ...0:
            self.Alpha = 0
        case 10...:
            self.Alpha = 10
        default:
            self.Alpha = Alpha
        }
    }
}
