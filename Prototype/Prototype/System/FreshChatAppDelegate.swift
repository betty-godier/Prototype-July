//
//      2022  Betty.dev 
//

import Foundation

class FreshChatAppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        self.initFreshchatSDK()
        return true
    }

    func initFreshchatSDK() {
        let freshchatConfig = FreshchatConfig.init(appID: "APP-ID", andAppKey: "APP-KEY") //Enter your AppID and AppKey here
        freshchatConfig.domain = "FRESHCHAT-DOMAIN"

        freshchatConfig.gallerySelectionEnabled = true;
        // set FALSE to disable picture selection for messaging via gallery
        freshchatConfig.cameraCaptureEnabled = true;
        // set FALSE to disable picture selection for messaging via camera
        freshchatConfig.teamMemberInfoVisible = true;
        // set to FALSE to turn off showing a team member avatar. To customize the avatar shown, use the theme file
        freshchatConfig.showNotificationBanner = true;
        // set to FALSE if you don't want to show the in-app notification banner upon receiving a new message while the app is open
        Freshchat.sharedInstance().initWith(freshchatConfig)
    }
}
