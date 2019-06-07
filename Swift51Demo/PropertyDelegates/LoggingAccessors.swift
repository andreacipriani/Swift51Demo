import Foundation

@propertyDelegate
public final class LoggingAccessors<T> {

    private let label: String
    private var _value: T?

    public init(_ label: String) {
        self.label = label
    }
    
    public var value: T? {
        get {
            print("Accessed property * \(label) * with value \(makeDescription(of:_value))")
            return _value
        } set {
            print("Property * \(label) * set from \(makeDescription(of: value)) to \(makeDescription(of: newValue))")
            _value = newValue
        }
    }
    
    private func makeDescription(of optionalValue: T?) -> String {
        return optionalValue != nil ? "\(optionalValue!)" : "nil"
    }
}

public final class LoggingAccessorsExample {
    
    @LoggingAccessors("name")
    var name: String
    
    func run() {
        name = "Andrea"
        name = "Cipriani"
    }
}
