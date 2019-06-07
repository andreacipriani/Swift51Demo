//import Foundation
//
//@propertyDelegate
//public final class ThreadSafe<T> {
//    private let queue: DispatchQueue
//
//    public init(queue: DispatchQueue = DispatchQueue(label: "ThreadSafeDefaultQueue", attributes: .concurrent)) {
//        self.queue = queue
//    }
//    
//    public var value: T? {
//        get {
//            queue.sync {
//                print("read")
//                return self.value
//            }
//        } set {
//            queue.async(flags: .barrier) {
//                print("write")
//                self.value = newValue
//            }
//        }
//    }
//}
//
//public class ThreadSafeExample {
//    
//    @ThreadSafe(queue: DispatchQueue(label: "ThreadSafeDefaultQueue", attributes: .concurrent)) var sharedValue: String
//    
//    public init() {
//        self.sharedValue = "initial value"
//    }
//    
//    func run() {
//        let writingQueue = DispatchQueue(label: "Writing queue")
//        let readingQueue = DispatchQueue(label: "Reading queue")
//        
//        for i in 0 ... 10 {
//            let random = Double((arc4random() % 10))
//            writingQueue.asyncAfter(deadline: .now() + random) {
//                print("I want to write the sharedValue with \(random)")
//                self.sharedValue = String(i)
//            }
//            readingQueue.asyncAfter(deadline: .now() + random) {
//                print("I want to read the sharedValue")
//                print("I read the sharedValue: \(String(i))")
//            }
//        }
//    }
//}
