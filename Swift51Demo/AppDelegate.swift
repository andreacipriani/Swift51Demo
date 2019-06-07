import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let backedByUserDefaultsExample = BackedByUserDefaultExample()
        backedByUserDefaultsExample.run()
        return true
    }
}

