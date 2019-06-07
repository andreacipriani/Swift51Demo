import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
  
        let backedByUserDefaultsExample = BackedByUserDefaultExample()
        backedByUserDefaultsExample.run()
        
//        let threadSafeExample = ThreadSafeExample()
//        threadSafeExample.run()
        
        let loggingAccessorsExample = LoggingAccessorsExample()
        loggingAccessorsExample.run()
        return true
    }
}

