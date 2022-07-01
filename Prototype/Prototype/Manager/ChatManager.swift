//
//      2022  Betty.dev 
//

import Foundation

class ChatManager: ObservableObject { 
    func startChat() {
        var currentKeyWindow: UIWindow? {
          UIApplication.shared.connectedScenes
            .filter { $0.activationState == .foregroundActive }
            .map { $0 as? UIWindowScene }
            .compactMap { $0 }
            .first?.windows
            .filter { $0.isKeyWindow }
            .first
        }
        guard let controller = currentKeyWindow?.rootViewController else { return }
        Freshchat.sharedInstance().showConversations(controller)
    }
}
