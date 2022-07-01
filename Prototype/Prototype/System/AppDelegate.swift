//
//      2022  Betty.dev 
//

import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    private var appDelegates = [UIApplicationDelegate]()
    
    private func configure() {
        appDelegates = [
            FreshChatAppDelegate()
        ]
    }
    
    override init() {
        super.init()
        configure()
    }
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        appDelegates.forEach { _ = $0.application?(application, didFinishLaunchingWithOptions: launchOptions)}
        return true
    }
}
