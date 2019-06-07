import Foundation

@propertyDelegate public final class BackedByUserDefault<T> {
    private let key: String
    
    public init(key: String) {
        self.key = key
    }
    
    public var value: T? {
        get {
            return UserDefaults.standard.object(forKey: key) as? T
        } set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
}

public final class BackedByUserDefaultExample {
    
    @BackedByUserDefault(key: "whatever") var text: String
    
    func run() {
        print("Text value is: \(text ?? "not set")")
        let randomValue = String(arc4random() % 10)
        text = randomValue
        print("Setting text to \(randomValue), it will be backed by user defaults, run the example again!")
    }
}
